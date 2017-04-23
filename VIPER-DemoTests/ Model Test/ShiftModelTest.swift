//
//  ShiftModelTest.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/22/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import XCTest
@testable import VIPER_Demo

class ShiftModelTest: XCTestCase {
    
    //MARK: Properties
    var shift = Shift(companyName: "", shiftTime: "", rating: 0, hourlyWage: 0, streetName: "", transpoertType: "", workType: "", imageUrl: "")
    
    //MARK: generated functions
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    //MARK: functions which tests each propertie of Shift object
    func testCompanyNameHasBeenSet() {
        shift.companyName = "Bravi ragazzi"
        XCTAssertEqual(shift.companyName, "Bravi ragazzi", "The company name should be as expected")
    }
    
    func testShiftTimeHasBeenSet() {
        shift.shiftTime = "9:00 - 14:00"
        XCTAssertEqual(shift.shiftTime, "9:00 - 14:00", "The shift time should be as expected")
    }
    
    func testRatingHasBeenSet() {
        shift.rating = 4.6
        XCTAssertEqual(shift.rating, 4.6, "The rating should be as expected")
    }
    
    func testCompanyHourlyWageBeenSet() {
        shift.hourlyWage = 10.0
        XCTAssertEqual(shift.hourlyWage, 10.0, "The hourly wage should be as expected")
    }
    
    func testStreetNameHasBeenSet() {
        shift.streetName = "Streatham hill"
        XCTAssertEqual(shift.streetName, "Streatham hill", "The street name should be as expected")
    }
    
    func testTransportTypeHasBeenSet() {
        shift.transpoertType = "Underground"
        XCTAssertEqual(shift.transpoertType, "Underground", "The transport type should be as expected")
    }
    
    func testWorkTypeHasBeenSet() {
        shift.workType = "Bar Work"
        XCTAssertEqual(shift.workType, "Bar Work", "The work type should be as expected")
    }
    
    func testImageUrlHasBeenSet() {
        shift.imageUrl = "http://hanabelete.com/bravi-ragazzi-pizza.png"
        XCTAssertEqual(shift.imageUrl, "http://hanabelete.com/bravi-ragazzi-pizza.png", "The image url should be as expected")
    }
}
