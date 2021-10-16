#include <time.h>
#include <stdio.h>
#include <napi.h>

int64_t _bigint() {
    struct timespec ts;

    clock_gettime(CLOCK_REALTIME, &ts);

    return ts.tv_sec * 1e9 + ts.tv_nsec;
}

std::string _stringified() {
    return std::to_string(_bigint());
}