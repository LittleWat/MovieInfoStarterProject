//
//  KeyManager.swift
//  MovieInfo
//
//  Created by Kohei Watanabe on 2019/04/01.
//  Copyright © 2019 Alfian Losari. All rights reserved.
//

import Foundation

struct KeyManager {
    
    private let keyFilePath = Bundle.main.path(forResource: "Keys", ofType: "plist")
    
    func getKeys() -> Dictionary<String, AnyObject>? {
        guard let keyFilePath = keyFilePath else {
            return nil
        }
        return NSDictionary(contentsOfFile: keyFilePath) as? Dictionary<String, AnyObject>
    }
    
    func getValue(key: String) -> AnyObject? {
        guard let keys = getKeys() else {
            return nil
        }
        return keys[key]
    }
}
