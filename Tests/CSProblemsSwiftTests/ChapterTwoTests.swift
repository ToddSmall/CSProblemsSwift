import XCTest
@testable import CSProblemsSwift

final class ChapterTwoTests: XCTestCase {
    func testNucleotide() {
        XCTAssertEqual(Nucleotide.C, Nucleotide.C)
        XCTAssert(Nucleotide.A < Nucleotide.C)
    }
    
    func testsplitString() {
        let s = "Drummer"
        XCTAssertEqual(splitString(s, by: 3), ["Dru", "mme", "r"])
        XCTAssertEqual(splitString(s, by: 4), ["Drum", "mer"])
    }
}
