//
//  Storage.swift
//  gt-first
//
//  Created by Jose Quintero on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import Foundation

class Storage {
    enum Key: Int {
        case launched = 0
        
        func value<T: Any>() -> T? {
            return Storage.default.retrieve(key: self)
        }
        
        func valueIs<T: Equatable>(value: T?) -> Bool {
            guard let retrieved: T = Storage.default.retrieve(key: self) else {
                return value == nil || (value as? Bool) == false;
            }
            
            return retrieved == value;
        }
    }
    
    static let `default` = Storage()
    
    func store<T: Any>(key: Key, value: T) {
        UserDefaults.standard.set(value, forKey: key.hashValue.description);
    }
    
    func retrieve<T: Any>(key: Key) -> T? {
        return UserDefaults.standard.value(forKey: key.rawValue.description) as? T;
    }
}
