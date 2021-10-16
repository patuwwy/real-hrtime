const assert = require("assert");
const rhtModule = require("..");
const { bigint, stringified } = rhtModule;

console.log({ bigint, stringified});
console.log("Test real-hrtime API.");

describe("bigint", () => {
    it("Should return BigInt type.", () => {
        const result = rhtModule.bigint();

        assert.ok(typeof result === "bigint");
    });

    it("Should be equal to Date.now() excluding nanoseconds.", () => {
        const result = rhtModule.bigint();
        const now = Date.now();

        assert.equal(
            now,
            Math.floor(parseInt(result / BigInt(1e6), 10))
        );
    });
});

describe("stringified", () => {
    it("Should return string type.", () => {
        const result = rhtModule.stringified();

        assert.ok(typeof result === "string");
    });

    it("Should be equal to Date.now() excluding nanoseconds (parsed to int).", () => {
        const result = rhtModule.stringified();
        const now = Date.now();

        assert.equal(
            now,
            Math.floor(parseInt(result, 10) / 1e6)
        );
    });
});
