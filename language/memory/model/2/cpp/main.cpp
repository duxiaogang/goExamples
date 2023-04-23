#include <iostream>
#include <vector>
#include <thread>
#include <mutex>
#include <chrono>

#include "timer.h"

const int N = 100 * 1000 * 1000;

int32_t *arrI;
int32_t *arrJ;
int32_t *arrK;
bool *flags;

void writeGr(int index) {
	for (int i = 0; i < N; i++) {
		arrI[2 * i] = 1;
		arrJ[2 * i] = 2;
		arrK[2 * i] = 3;
		flags[i] = true;
	}
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
}

void troubleGr(int offset) {
	while (true) {
		for (int i = 0; i < N; i++) {
			int p = offset + i;
			if (p >= N) {
				p -= N;
			}
			arrI[2 * p + 1] = i;
			arrJ[2 * p + 1] = i;
			arrK[2 * p + 1] = i;
		}
	}
}

void readGr(int index, int offset) {
	for (int i = offset; i < N; i++) {
		while (true) {
			if (flags[i]) {
				if (arrI[2 * i] + arrJ[2 * i] + arrK[2 * i] != 6) {
					std::cout << index << " error" << std::endl;
				}
				break;
			}
		}
	}
	std::cout << index << " done, now=" << Timer::NowMicroSec() << std::endl;
}

int main() {
	arrI = new int32_t[2 * N];
	arrJ = new int32_t[2 * N];
	arrK = new int32_t[2 * N];
	flags = new bool[N];

	auto bt = std::chrono::steady_clock::now();

	std::thread write_thread(writeGr, 1);

	std::thread trouble_thread1(troubleGr, 0 * (N / 4));
	std::thread trouble_thread2(troubleGr, 2 * (N / 4));

	std::thread read_thread1(readGr, 2, 1 * 1000 * 1000);
	std::thread read_thread2(readGr, 3, 2 * 1000 * 1000);
	std::thread read_thread3(readGr, 4, 3 * 1000 * 1000);

	write_thread.join();
	trouble_thread1.detach();
	trouble_thread2.detach();
	read_thread1.join();
	read_thread2.join();
	read_thread3.join();

	auto d = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::steady_clock::now() - bt);
	std::cout << "Time elapsed: " << d.count() << " ms" << std::endl;

	std::this_thread::sleep_for(std::chrono::milliseconds(1));

	return 0;
}
