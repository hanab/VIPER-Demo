//
//  APIResponseTest.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/22/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import XCTest
@testable import VIPER_Demo

class APIResponseTest: XCTestCase {
    
    //MARK: Properties
    let apiClent = ShiftsAPIClent ()
    let shifts:[Shift] = [Shift]()
    
    override func setUp() {
        super.setUp()
        self.apiClent.retrieveShiftsList()
    }
    
    //MARK: Test functions
    func testPerformanceExample() {
        self.measure {
            self.apiClent.retrieveShiftsList()
        }
    }
}
