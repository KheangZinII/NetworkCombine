//
//  File.swift
//  
//
//  Created by Bong Kokkheang on 25/10/23.
//

import Foundation

public extension String {
    func replace(of: String, with: String) -> String {
        return self.replacingOccurrences(of: of, with: with)
    }
    
    mutating func replaced(of: String, with: String) {
        self = self.replacingOccurrences(of: of, with: with)
    }
}
