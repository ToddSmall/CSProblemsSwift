import XCTest
@testable import CSProblemsSwift

final class ChapterTwoTests: XCTestCase {
    func testBinarySearch() {
        let arr = [1, 2, 3, 4, 5, 6]
        XCTAssertEqual(binarySearch(arr, item: 2), 1)
        XCTAssertEqual(binarySearch(arr, item: 1), 0)
        XCTAssertEqual(binarySearch(arr, item: 6), 5)
        XCTAssertNil(binarySearch(arr, item: -1))
        XCTAssertNil(binarySearch(arr, item: 7))

        let emptyArr = [Int]()
        XCTAssertNil(binarySearch(emptyArr, item: 4))
    }
}
