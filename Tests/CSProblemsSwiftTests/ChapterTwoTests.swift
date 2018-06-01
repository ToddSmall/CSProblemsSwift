import XCTest
@testable import CSProblemsSwift

final class ChapterTwoTests: XCTestCase {
    func testStringGrouper() {
        let s = "Drummer is great!"
    
        XCTAssertEqual(s.group(of: 3),
                       ["Dru", "mme", "r i", "s g", "rea", "t!"])
    }
    
    func teststringToGene() {
        let s = "ACGTGG"
        let computed = stringToGene(s)
        
        XCTAssertEqual(computed[0], Nucleotide.A)
    }
}
