
#include "fft.h"
#include "fft_internal.h"
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

#include <napi.h>


#include <iostream>
#include <chrono>


mufft_plan_1d *muplan;
unsigned size; 



/*
 * Copyright (C) 2010, Google Inc. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1.  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2.  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY APPLE INC. AND ITS CONTRIBUTORS ``AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL APPLE INC. OR ITS CONTRIBUTORS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
// https://github.com/WebKit/webkit/blob/master/Source/WebCore/Modules/webaudio/RealtimeAnalyser.cpp
void applyWindow(float* p, size_t n)
{    
    double pi = 3.14159265358979;
    // Blackman window
    double alpha = 0.16;
    double a0 = 0.5 * (1 - alpha);
    double a1 = 0.5;
    double a2 = 0.5 * alpha;
    
    for (unsigned i = 0; i < n; ++i) {
        double x = static_cast<double>(i) / static_cast<double>(n);
        double window = a0 - a1 * cos(2 * pi * x) + a2 * cos(4 * pi * x);
        p[i] *= float(window);
    }
}

void InitFFT(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();

  double N = info[0].As<Napi::Number>().Int32Value();
  muplan =  mufft_create_plan_1d_r2c(N, 0);
  size = N;

  std::cout << "Initialized with: " << N << std::endl; 
}

Napi::Float32Array fft_r(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  cfloat* output = (cfloat*)mufft_alloc(size * sizeof(cfloat));
  float* input = (float*)mufft_alloc(size * sizeof(float));
  applyWindow(input, size);
  memcpy(input, info[0].As<Napi::Float32Array>().Data(), size * sizeof(float));

  mufft_execute_plan_1d(muplan, output, input);
  

  int fftSize = (size / 2) + 1;
  Napi::Float32Array magnitude = Napi::Float32Array::New(env, fftSize);
  for(int i = 0; i < fftSize; i++) {
    magnitude[i] = sqrtf32((output[i].real*output[i].real)  + (output[i].imag*output[i].imag));
  }

  mufft_free(output);
  mufft_free(input);
  return magnitude;
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "init"), Napi::Function::New(env, InitFFT));
  exports.Set(Napi::String::New(env, "fft_r"), Napi::Function::New(env, fft_r));

  return exports;
}

NODE_API_MODULE(addon, Init)


