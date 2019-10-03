


all:
	gcc --std=c++11 main.cc -I./muFFT -L./bin -Wall -lstdc++ -lmuFFT -lmuFFT-sse -lmuFFT-sse3 -lmuFFT-avx -lm