//
//  DataManagerMock.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/22/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
@testable import VIPER_Demo

class InteractorMock:  ShiftsListInteractorInputProtocol, ShiftsListAPIManagerOutputProtocol {
    
    //MARK: Properties
    var interactorOutput: ShiftsListInteractorOutputProtocol?
    var apiResponseManager: ShiftsListAPIManagerInputProtocol?
    //MARK: Properties to check methods are called
    var fetchShiftsCalled = false
    var shiftsFetchedCalled = false
    var onErrorCalled = false
    
    //MARK: functions
    func fetchShifts() {
        apiResponseManager?.retrieveShiftsList()
        fetchShiftsCalled = true
    }
    
    func shiftsFetched(_ shifts: [Shift]) {
        interactorOutput?.didFinishFetchingShifts(shifts)
        shiftsFetchedCalled  = true
    }
    
    func onError() {
        interactorOutput?.shiftsFetchingFailed()
        onErrorCalled = true
        print("Error")
    }
}
