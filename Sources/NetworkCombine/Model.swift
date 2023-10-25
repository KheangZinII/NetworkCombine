//
//  File.swift
//  
//
//  Created by Bong Kokkheang on 25/10/23.
//

import Foundation

struct Upload: Codable {
    struct Response: Decodable {
        var message: String
        var status: Bool
        var data: Data
        
        struct Data: Decodable {
            var file_name: String
        }
    }
}

struct Download: Codable {
    struct Response {
        
    }
}
