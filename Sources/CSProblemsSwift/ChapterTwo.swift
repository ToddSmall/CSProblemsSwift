enum Nucleotide: Character, Comparable {
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

func splitString(_ s: String, by: Int = 3) -> [String] {
    return stride(from: 0, to: s.count, by: by).map{ i -> String in
        let startIndex = s.index(s.startIndex, offsetBy: i)
        let endIndex = s.index(startIndex, offsetBy: by, limitedBy: s.endIndex) ?? s.endIndex
        return String(s[startIndex..<endIndex])
    }
}
