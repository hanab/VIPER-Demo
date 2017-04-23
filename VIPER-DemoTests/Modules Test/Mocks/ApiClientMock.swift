//
//  ApiClientMock.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/23/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
@testable import VIPER_Demo


class ApiClientMock: ShiftsListAPIManagerInputProtocol {

    //MARK: Properties
    var apiResponseDelegate : ShiftsListAPIManagerOutputProtocol?
    var retrieveShiftsListCalled = false
    public var shifts = [Shift]()
    
    //MARK: functions
    func retrieveShiftsList() {
        apiResponseDelegate?.shiftsFetched(shifts)
        retrieveShiftsListCalled = true
    }
}
