#ifndef NAPI_EXPERIMENTAL
    #define NAPI_EXPERIMENTAL 1;
#endif

#include <time.h>
#include <napi.h>
#include <stdio.h>
#include <rht-linux.h>

Napi::BigInt bigint(const Napi::CallbackInfo& info) {
    return Napi::BigInt::New(info.Env(), _bigint());
}

Napi::String stringified(const Napi::CallbackInfo& info) {
    return Napi::String::New(info.Env(), _stringified());
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {
    exports.Set(
        Napi::String::New(env, "bigint"),
        Napi::Function::New(env, bigint)
    );

    exports.Set(
        Napi::String::New(env, "stringified"),
        Napi::Function::New(env, stringified)
    );

    return exports;
}

NODE_API_MODULE(realHRTime, Init)
