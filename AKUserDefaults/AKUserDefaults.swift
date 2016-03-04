//
//  AKUserDefaults.swift
//  AKUserDefaults
//
//  Created by akio0911 on 2016/03/04.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

public protocol KeyProtocol {
    var key : String { get }
}

public protocol Removable {
    func remove()
}

public extension Removable where Self : KeyProtocol {
    public func remove() {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(self.key)
    }
}

public struct BoolKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> Bool {
        return NSUserDefaults.standardUserDefaults().boolForKey(self.key)
    }
    
    public func set(b:Bool) {
        NSUserDefaults.standardUserDefaults().setBool(b, forKey: self.key)
    }
}

public struct DataKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> NSData? {
        return NSUserDefaults.standardUserDefaults().dataForKey(self.key)
    }
    
    public func set(data:NSData) {
        NSUserDefaults.standardUserDefaults().setObject(data, forKey: self.key)
    }
}

public struct FloatKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> Float {
        return NSUserDefaults.standardUserDefaults().floatForKey(self.key)
    }
    
    public func set(f:Float) {
        NSUserDefaults.standardUserDefaults().setFloat(f, forKey: self.key)
    }
}

public struct IntKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> Int {
        return NSUserDefaults.standardUserDefaults().integerForKey(self.key)
    }
    
    public func set(n:Int) {
        NSUserDefaults.standardUserDefaults().setInteger(n, forKey: self.key)
    }
}

public struct ObjectKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> AnyObject? {
        return NSUserDefaults.standardUserDefaults().objectForKey(self.key)
    }
    
    public func set(obj:AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject(obj, forKey: self.key)
    }
}

public struct StringKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> String? {
        return NSUserDefaults.standardUserDefaults().stringForKey(self.key)
    }
    
    public func set(str:String) {
        NSUserDefaults.standardUserDefaults().setObject(str, forKey: self.key)
    }
}

public struct DoubleKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> Double {
        return NSUserDefaults.standardUserDefaults().doubleForKey(self.key)
    }
    
    public func set(d:Double) {
        NSUserDefaults.standardUserDefaults().setDouble(d, forKey: self.key)
    }
}

public struct URLKey : KeyProtocol, Removable {
    public let key : String
    
    public init(key:String) {
        self.key = key
    }
    
    public func get() -> NSURL? {
        return NSUserDefaults.standardUserDefaults().URLForKey(self.key)
    }
    
    public func set(url:NSURL) {
        NSUserDefaults.standardUserDefaults().setURL(url, forKey: self.key)
    }
}


public class AKUserDefaults {
    public func synchronize() -> Bool {
        return NSUserDefaults.standardUserDefaults().synchronize()
    }
}

