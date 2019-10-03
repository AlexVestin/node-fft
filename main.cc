
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


