enum Nucleotide: Character, Comparable {
    typealias RawValue = Character
    
    static func < (lhs: Nucleotide, rhs: Nucleotide) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
    
    case A = "A"
    case C = "C"
    case G = "G"
    case T = "T"
}

typealias Codon = (Nucleotide, Nucleotide, Nucleotide)
typealias Gene = [Codon]

extension String {
    func group(of n: Int) -> [String] {
        let chars = Array(self)
        return stride(from: 0, to: chars.count, by: n).map {
            String(chars[$0..<min($0+n, chars.count)])
        }
    }
}


