const cds = require("@sap/cds/lib");
const { expect } = cds.test(__dirname + "../../");

jest.setTimeout(10000);

describe("Test", () => {
  it("should not fail", () => {
    expect(1).to.equal(1);
  });
});
