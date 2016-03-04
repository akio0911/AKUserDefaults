//
//  AKUserDefaultsTests.swift
//  AKUserDefaultsTests
//
//  Created by akio0911 on 2016/03/04.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import XCTest
@testable import AKUserDefaults

class AKUserDefaultsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test1() {
        class MyCustomUserDefaults : AKUserDefaults {
            let name = StringKey(key: "name")
            let age  = IntKey(key: "age")
        }
        
        let ud = MyCustomUserDefaults()
        
        ud.name.set("sato")
        ud.age.set(35)
        let r1 = ud.synchronize()
        XCTAssertTrue(r1)
        
        XCTAssertEqual(ud.name.get(), "sato")
        XCTAssertEqual(ud.age.get(), 35)
        
        
        ud.name.set("suzuki")
        ud.age.set(45)
        let r2 = ud.synchronize()
        XCTAssertTrue(r2)
        
        XCTAssertEqual(ud.name.get(), "suzuki")
        XCTAssertEqual(ud.age.get(), 45)
    }
    
}
