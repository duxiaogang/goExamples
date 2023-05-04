CXX=g++ -m64 -std=c++14
#CXXFLAGS=-g -Wall -Wextra -Wshadow -Wcast-qual -Waggregate-return -Winline -Wunreachable-code
CXXFLAGS=-g -Wall -Wunreachable-code -O3
DEFINES=
INCLUDES=-I.
LD=g++ -m64 -std=c++14
LDFLAGS=
DASM=objdump
DASMFLAGS=-d

OBJS:=func1.o func2.o
LIBS=-lpthread

all: test

test: main.o ${OBJS} 
	${LD} ${LDFLAGS} -o $@ $< ${OBJS} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >test.s

.cpp.o:
	$(CXX) ${CXXFLAGS} ${DEFINES} ${INCLUDES} -c $< -o $@

.cc.o:
	$(CXX) ${CXXFLAGS} ${DEFINES} ${INCLUDES} -c $< -o $@

clean:
	rm -f *.o *.s test ${OBJS}




