//
//  ShiftsListInteractor.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation

class ShiftsListInteractor : ShiftsListInteractorInputProtocol {
    
    //MARK: ShiftsListInteractorInputProtocol implementation
    weak var interactorOutput: ShiftsListInteractorOutputProtocol?
    var apiResponseManager: ShiftsListAPIManagerInputProtocol?
    
    //MARK: functions
    func fetchShifts() {
        apiResponseManager?.retrieveShiftsList()
    }
}

//MARK: extensions
extension ShiftsListInteractor : ShiftsListAPIManagerOutputProtocol{
    
    //MARK: ShiftsListAPIManagerOutputProtocol implementation
    func shiftsFetched(_ shifts: [Shift]) {
        interactorOutput?.didFinishFetchingShifts(shifts)
    }
    
    func onError() {
        interactorOutput?.shiftsFetchingFailed()
    }
}
