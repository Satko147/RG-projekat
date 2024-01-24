PROGRAM = tdss
CXX = g++
CXXFLAGS = -g -std=c++11 -Wall -Wextra
GLFLAGS = -lGL -lGLU -lglut

$(PROGRAM): main_cpp.o
	$(CXX) -o $@ $^ $(GLFLAGS) -lm

main.o: main_cpp.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $^

.PHONY: clean

clean:
	rm *.o $(PROGRAM)