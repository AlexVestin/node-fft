{
  "targets": [
    {
      "target_name": "addon",
      "cflags!": [ "-fno-exceptions" ],
      "cflags_cc!": [ "-fno-exceptions" ],
      "sources": [ "main.cc" ],
      "include_dirs": [
        "<!@(node -p \"require('node-addon-api').include\")",
        './muFFT'
      ],
      'defines': [ 'NAPI_DISABLE_CPP_EXCEPTIONS' ],
      'library_dirs' : ['/home/gaz/prog/fft/bin'],
      'libraries': [
          '-Wl,-rpath',
          '-Wall',
          '-lstdc++',
          '-lmuFFT',
          '-lmuFFT-sse',
          '-lmuFFT-sse3',
          '-lmuFFT-avx',
          '-lm'
      ]
    }
  ]
}