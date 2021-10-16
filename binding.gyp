{
  "targets": [
  ],
  "conditions": [
    [
      'OS=="linux"',
      {
        "targets": [
          {
            "target_name": "real-hrtime",
            "cflags!": [ "-fno-exceptions" ],
            "cflags_cc!": [ "-fno-exceptions" ],
            "sources": [
              "./src/index.cpp",
              "./src/rht-linux.h",
              "./src/rht-linux.cpp"
            ],
            "include_dirs": [
              "<!@(node -p \"require('node-addon-api').include\")",
              './src/',
            ],
            'defines': [ 'NAPI_DISABLE_CPP_EXCEPTIONS', 'NAPI_EXPERIMENTAL' ],
            }
        ]
      }
    ]
  ]
}