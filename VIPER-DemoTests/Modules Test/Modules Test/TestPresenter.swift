//
//  TestPresenter.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/23/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import XCTest
@testable import VIPER_Demo

class TestPresenter: XCTestCase {
    
    //MARK: Properies
    let presenter = ShiftsListPresenter()
    let view =  ViewMock()
    let interactor = InteractorMock()
    var shifts = [Shift(companyName: "hello", shiftTime: "10 - 12", rating: 1, hourlyWage: 1, streetName: "X", transpoertType: "X", workType: "X", imageUrl: "X")]
   
    override func setUp() {
        super.setUp()
        
        interactor.interactorOutput = presenter
        presenter.view = view
        presenter.interactor = interactor
    }
    
    //MARK: Test Functions
    func testDataTransferedFromInteractorToPresented() {
        presenter.viewDidLoad()
        XCTAssertTrue(interactor.fetchShiftsCalled)
    }
    
    func testDataTransferdFromPresenterToView() {
        presenter.didFinishFetchingShifts(shifts)
        XCTAssertTrue(view.showShiftsCalled)
        XCTAssert(view.shiftList.count == 1, "more or less Shifts than expected \(view.shiftList.count)")
    }
}
