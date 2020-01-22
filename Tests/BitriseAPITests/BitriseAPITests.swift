import XCTest
@testable import BitriseAPI

final class BitriseAPITests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BitriseAPI().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
