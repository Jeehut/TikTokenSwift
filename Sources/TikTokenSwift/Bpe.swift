//
//  Bpe.swift
//  
//
//  Created by Richard Perry on 9/2/24.
//

import Foundation

// Essentially a dictionary of a C style string as the key and it's corresponding ranking as the value
typealias BpeRanks = [[UInt8]: Int]

extension BpeRanks {
    var keyValueSwapped: [Int: [UInt8]] {
        reduce(into: [:], { $0[$1.value] = $1.key })
    }
}
