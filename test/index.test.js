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

    it("Should be close to Date.now() excluding nanoseconds.", () => {
        const now = Date.now();
        const result = rhtModule.bigint();
        const rhtMs = Number(result / BigInt(1e6));

        assert.ok(
            Math.abs(rhtMs - now) <= 50,
            `Expected ${rhtMs} to be within 50ms of ${now}`
        );
    });
});

describe("stringified", () => {
    it("Should return string type.", () => {
        const result = rhtModule.stringified();

        assert.ok(typeof result === "string");
    });

    it("Should be close to Date.now() excluding nanoseconds (parsed to int).", () => {
        const now = Date.now();
        const result = rhtModule.stringified();
        const rhtMs = Math.floor(parseInt(result, 10) / 1e6);

        assert.ok(
            Math.abs(rhtMs - now) <= 50,
            `Expected ${rhtMs} to be within 50ms of ${now}`
        );
    });
});
