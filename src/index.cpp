#ifndef NAPI_EXPERIMENTAL
    #define NAPI_EXPERIMENTAL 1;
#endif

#include <time.h>
#include <napi.h>
#include <stdio.h>

int64_t rht() {
    struct timespec ts;

    clock_gettime(CLOCK_REALTIME, &ts);

    return ts.tv_sec * 1e9 + ts.tv_nsec;
}

Napi::BigInt bigint(const Napi::CallbackInfo& info) {
    return Napi::BigInt::New(info.Env(), rht());
}

Napi::String str(const Napi::CallbackInfo& info) {
    return Napi::String::New(info.Env(), std::to_string(rht()));
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {
    exports.Set(
        Napi::String::New(env, "bigint"),
        Napi::Function::New(env, bigint)
    );

    exports.Set(
        Napi::String::New(env, "stringified"),
        Napi::Function::New(env, str)
    );

    return exports;
}

NODE_API_MODULE(realHRTime, Init)
