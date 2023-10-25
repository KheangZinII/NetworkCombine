//
//  Encodable.swift
//  KOSIGN_LMS
//
//  Created by lymanny on 16/3/22.
//

import Foundation

extension Encodable {
    
    func asJSONString() -> String? {
        let jsonEncoder = JSONEncoder()
        do {
            let jsonData    = try jsonEncoder.encode(self)
            let jsonString  = String(data: jsonData, encoding: .utf8)
            return jsonString
        } catch {
            return nil
        }
    }
    
}
