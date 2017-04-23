//
//  MockedView.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/23/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
@testable import VIPER_Demo


class ViewMock: ShiftsListViewProtocol {
    
    //MARK: Properties
    var presenter: ShiftsListPresenterProtocol?
    var shiftList = [Shift]()
    //MARK: Check method called properties 
    var showShiftsCalled = false
    var showErrorCalled = false
    
    //MARK: ShiftsListViewProtocol implementation
    func showShifts(with shifts: [Shift]) {
        shiftList = shifts
        showShiftsCalled = true
    }
    
    func showError() {
        print("Error Loading view")
        showErrorCalled = true
    }
}
