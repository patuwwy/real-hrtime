# real-hrtime

NodeJS module

`Date.now()` equivalent but with nanoseconds (BigInt)

currently only for Linux

API
```
const rht = require("real-hrtime")

rht.bigint()
// Number of nanoseconds since 1970

rht.stringified()
// above stringified
```

Test:
```
npm test
```
