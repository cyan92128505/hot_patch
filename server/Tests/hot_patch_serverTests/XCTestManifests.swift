import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(hot_patch_serverTests.allTests),
    ]
}
#endif
