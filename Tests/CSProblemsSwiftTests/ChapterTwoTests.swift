import XCTest
@testable import CSProblemsSwift

final class ChapterTwoTests: XCTestCase {
    func testStringGrouper() {
        let s = "Drummer is great!"
    
        XCTAssertEqual(s.group(of: 3), ["Dru", "mme"])
    }
    
    static var allTests = [
        ("testStringGrouper", testStringGrouper)
    ]
}
