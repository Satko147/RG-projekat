PROGRAM = tdss
CXX = g++
CXXFLAGS = -g -std=c++11 -Wall -Wextra
GLFLAGS = -lGL -lGLU -lglut

$(PROGRAM): main.o
	$(CXX) -o $@ $^ $(GLFLAGS) -lm

main.o: main.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $^

.PHONY: clean

clean:
	rm *.o $(PROGRAM)
