import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(dodocha169_profileTests.allTests),
    ]
}
#endif
