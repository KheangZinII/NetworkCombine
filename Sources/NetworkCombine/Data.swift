//
//  File.swift
//  
//
//  Created by Bong Kokkheang on 25/10/23.
//

import Foundation

public extension Data {
    
    // - For Print Response Data
    var prettyPrinted: String {
        return MyJson.prettyPrint(value: self.dataToDic)
    }
    var dataToDic: NSDictionary {
        guard let dic: NSDictionary = (try? JSONSerialization.jsonObject(with: self, options: [])) as? NSDictionary else {
            return [:]
        }
        
        return dic
    }
}
