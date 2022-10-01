CXX = g++
CXXFLAGS = -Wall -IDependencies/include
LDFLAGS = -LDependencies/lib -lglfw3dll

SRC = main.cpp glad.c
OBJ = main.o glad.o

target = pyramid

all: $(target)

$(target): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(target) $(OBJ) $(LDFLAGS)
	move $(target).exe dist/$(target).exe
	dist/$(target)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<
