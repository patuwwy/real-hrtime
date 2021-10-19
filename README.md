# real-hrtime

`Date.now(): BigInt` with nanoseconds

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
