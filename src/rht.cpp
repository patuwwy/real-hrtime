#include "rht.h"

#if defined(_WIN32)
#define WIN32_LEAN_AND_MEAN
#include <windows.h>

int64_t get_real_hrtime()
{
    FILETIME ft;
    GetSystemTimePreciseAsFileTime(&ft);

    ULARGE_INTEGER ull;
    ull.LowPart = ft.dwLowDateTime;
    ull.HighPart = ft.dwHighDateTime;

    const int64_t EPOCH_DIFFERENCE_100NS = 116444736000000000LL;
    int64_t total100ns = static_cast<int64_t>(ull.QuadPart) - EPOCH_DIFFERENCE_100NS;

    // Przeliczenie 100ns na nanosekundy (* 100)
    return total100ns * 100LL;
}

#else
#include <time.h>

int64_t get_real_hrtime()
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return (static_cast<int64_t>(ts.tv_sec) * 1000000000LL) + static_cast<int64_t>(ts.tv_nsec);
}

#endif

std::string get_real_hrtime_string()
{
    return std::to_string(get_real_hrtime());
}
