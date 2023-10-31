//
//  File.swift
//  
//
//  Created by Bong Kokkheang on 31/10/23.
//

import Foundation

public struct Shared {
    
    //MARK:- singleton
    public static var share = Shared()
    
    private init() { }
    
    public var jSessionId                      : String?
    public var token                           : String?
}
