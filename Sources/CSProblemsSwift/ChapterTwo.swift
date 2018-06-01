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

func stringToGene(_ s: String) -> Gene {
    var gene = Gene()
    let chunks = s.group(of: 3).map( {Array($0)} )
    for chunk in chunks {
        let n0 = Nucleotide.init(rawValue: chunk[0])
        let n1 = Nucleotide.init(rawValue: chunk[1])
        let n2 = Nucleotide.init(rawValue: chunk[2])
        gene.append((n0!, n1!, n2!))
    }
    return gene
}
