CXX=g++ -m64 -std=c++11
#CXXFLAGS=-g -Wall -Wextra -Wshadow -Wcast-qual -Waggregate-return -Winline -Wunreachable-code -g
#CXXFLAGS=-g -Wall -Wunreachable-code
CXXFLAGS=-g -Wall -Wunreachable-code -O3
DEFINES=
INCLUDES=-I.
LD=g++ -m64 -std=c++11
LDFLAGS=-L.
DASM=objdump
#DASMFLAGS=-dS
DASMFLAGS=-d

OBJS:=
LIBS=-lfunc -lfunc2 -ldl

all: libfunc.so libfunc2.so test

test: main.o ${OBJS} 
	${LD} ${LDFLAGS} -o $@ $< ${OBJS} ${LIBS}
	${DASM} ${DASMFLAGS} $@ >test.s

libfunc.so: func.cpp
	${CXX} ${CXXFLAGS} --shared -fPIC -o $@ $<

libfunc2.so: func2.cpp
	${CXX} ${CXXFLAGS} --shared -fPIC -o $@ $<

.cpp.o:
	$(CXX) ${CXXFLAGS} ${DEFINES} ${INCLUDES} -c $< -o $@

.cc.o:
	$(CXX) ${CXXFLAGS} ${DEFINES} ${INCLUDES} -c $< -o $@

clean:
	rm -f *.o *.s test ${OBJS} libfunc.so




