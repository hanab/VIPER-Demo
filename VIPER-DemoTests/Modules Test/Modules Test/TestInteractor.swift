//
//  TestInteractor.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/22/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import XCTest
@testable import VIPER_Demo

class TestInteractor: XCTestCase {
    
    //MARK: Properties
    var interactor = ShiftsListInteractor ()
    var apiManager  =  ApiClientMock()
    
    override func setUp() {
        super.setUp()
        
        apiManager.shifts = [Shift(companyName: "hello", shiftTime: "10 - 12", rating: 1, hourlyWage: 1, streetName: "X", transpoertType: "X", workType: "X", imageUrl: "X")]

        apiManager.apiResponseDelegate = interactor
        interactor.apiResponseManager = apiManager
        interactor.interactorOutput = self as? ShiftsListInteractorOutputProtocol
    }
    
    //MARK: Test functions
    func testInteractorGetsShiftsDataFromApi() {
        interactor.fetchShifts()
        XCTAssertTrue(apiManager.retrieveShiftsListCalled)
    }
}
