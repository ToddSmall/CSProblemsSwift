import XCTest
@testable import CSProblemsSwift

final class ChapterOneTests: XCTestCase {
    func testFib1() {
        XCTAssertEqual(fib1(12), 144)
    }
    
    func testFib2() {
        XCTAssertEqual(fib2(12), 144)
    }

    func testStack() {
        var stack = Stack<String>()
        
        stack.push("Drummer")
        stack.push("Hubble")
        stack.push("Logan")
        
        XCTAssertEqual(stack.pop(), "Logan")
        
        stack.push("Sirius")
        XCTAssertEqual(stack.pop(), "Sirius")
    }
    
    func testHanoi() {
        let numDiscs = 4
        var towerA = Stack<Int>()
        var towerB = Stack<Int>()
        var towerC = Stack<Int>()
        
        for i in 1...numDiscs {
            towerA.push(i)
        }
        
        hanoi(from: &towerA, to: &towerC, temp: &towerB, n: numDiscs)
        
        XCTAssertEqual(towerC.pop(), 4)
        XCTAssertEqual(towerC.pop(), 3)
        XCTAssertEqual(towerC.pop(), 2)
        XCTAssertEqual(towerC.pop(), 1)
    }
}
