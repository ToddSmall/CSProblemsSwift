// Fibonacci sequence

var fibMemo: [UInt: UInt] = [0: 0, 1: 1]

func fib1(_ n: UInt) -> UInt {
    if let result = fibMemo[n] {
        return result
    } else {
        fibMemo[n] = fib1(n-1) + fib1(n-2)
    }
    return fibMemo[n]!
}

let fibSequence = sequence(state: (UInt(0), UInt(1)), next: { (state) -> UInt in
    state = (state.1, state.0 + state.1)
    return state.0
})

func fib2(_ n: UInt) -> UInt {
    return fibSequence.prefix(Int(n)).dropFirst(Int(n) - 1).first(where: { $0 == $0 })!
}

// Towers of Hanoi

struct Stack<T>: CustomStringConvertible {
    private var container: [T] = [T]()
    mutating func push(_ thing: T) { container.append(thing) }
    mutating func pop() -> T { return container.removeLast() }
    var description: String { return container.description }
}

func hanoi(from: inout Stack<Int>, to: inout Stack<Int>, temp: inout Stack<Int>, n: Int) {
    if n == 1 {
        to.push(from.pop())
    } else {
        hanoi(from: &from, to: &temp, temp: &to, n: n-1)
        hanoi(from: &from, to: &to, temp: &temp, n: 1)
        hanoi(from: &temp, to: &to, temp: &from, n: n-1)
    }
}
