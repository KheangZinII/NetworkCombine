//
//  File.swift
//  
//
//  Created by Bong Kokkheang on 31/10/23.
//

import Foundation

struct Shared {
    
    //MARK:- singleton
    static var share = Shared()
    
    private init() { }
    
    var jSessionId                      : String?
    var token                           : String?
}
