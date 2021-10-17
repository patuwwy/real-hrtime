const { platform } = require("os");

if (platform() === "linux") {
    module.exports = { ...require('./build/Release/real-hrtime-linux.node') };
    return;
}

throw new Error("Platform not implemented");