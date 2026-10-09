# @patu/real-hrtime

Node.js native addon providing high-resolution real-world Unix time in nanoseconds as `BigInt` or `String`.

Cross-platform support for **Windows**, **macOS**, and **Linux** (x64, ia32, arm64). Prebuilt binaries are included via N-API, so no local C++ compiler or Python installation is required when installing the package.

## Installation

```bash
npm install @patu/real-hrtime
```

## API

```js
const rht = require("@patu/real-hrtime");

// Returns BigInt with nanoseconds since Unix Epoch (1970-01-01 00:00:00 UTC)
const ns = rht.bigint();
console.log(ns); // e.g. 1791556561787123456n

// Returns nanoseconds as a String (useful if BigInt serialization is not supported)
const str = rht.stringified();
console.log(str); // e.g. "1791556561787123456"
```

## Supported Platforms & Architectures

Prebuilt binaries are provided for:
- **Windows**: x64, ia32
- **macOS**: Apple Silicon (arm64), Intel (x64)
- **Linux**: x64

If running on another platform/architecture, it will automatically fallback to building from source using `node-gyp`.

## Testing

```bash
npm test
```
