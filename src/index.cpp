#include <napi.h>
#include "rht.h"

Napi::BigInt bigint(const Napi::CallbackInfo& info) {
    return Napi::BigInt::New(info.Env(), get_real_hrtime());
}

Napi::String stringified(const Napi::CallbackInfo& info) {
    return Napi::String::New(info.Env(), get_real_hrtime_string());
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

NODE_API_MODULE(real_hrtime, Init)
