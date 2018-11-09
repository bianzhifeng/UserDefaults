//
//  CZBUserDefaultAble.swift
//  CZBDataPersistence
//
//  Created by 边智峰 on 2018/11/6.
//  Copyright © 2018 边智峰. All rights reserved.
//

import Foundation

/// 设置存取key的协议
public protocol CZBUserDefaultsSettable {
//    var uniqueKey: String { get }
}

public extension CZBUserDefaultsSettable where Self: RawRepresentable, Self.RawValue == String {
    
    
    
    public func store(value: Any?){
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedValue: Any? {
        return UserDefaults.standard.value(forKey: uniqueKey)
    }

    public func store(value: Bool) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedBool: Bool {
        return UserDefaults.standard.bool(forKey: uniqueKey)
    }
    
    public func store(value: Int) {
        print(uniqueKey)
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedInt: Int {
        return UserDefaults.standard.integer(forKey: uniqueKey)
    }
    
    public func store(value: [String: Any]) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedDictionary: [String: Any] {
        guard let dict = UserDefaults.standard.dictionary(forKey: uniqueKey) else {
            return [:]
        }
        return dict
    }
    
    public func store(value: [String]) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedStringArray: [String] {
        guard let array = UserDefaults.standard.stringArray(forKey: uniqueKey) else {
            return []
        }
        return array
    }
    
    public func store(value: String) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    
    public var storedString: String {
        guard let string = UserDefaults.standard.string(forKey: uniqueKey) else {
            return ""
        }
        return string
    }
    
    // 为所有的key加上枚举名作为命名空间，避免重复
    public var uniqueKey: String {
        return "\(Self.self).\(rawValue)"
    }
}
