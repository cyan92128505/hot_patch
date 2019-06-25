import XCTest

import hot_patch_serverTests

var tests = [XCTestCaseEntry]()
tests += hot_patch_serverTests.allTests()
XCTMain(tests)
