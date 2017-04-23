//
//  ShiftsListInteractor.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation

class ShiftsListInteractor : NSObject, ShiftsListInteractorInputProtocol {
    
    //MARK: ShiftsListInteractorInputProtocol implementation
    weak var interactorOutput: ShiftsListInteractorOutputProtocol?
    var apiResponseManager: ShiftsListAPIManagerInputProtocol?
    
    //MARK: functions
    func fetchShifts() {
        apiResponseManager?.retrieveShiftsList()
    }
}

//MARK: extensions
extension ShiftsListInteractor: ShiftsListAPIManagerOutputProtocol {
    
    //MARK: ShiftsListAPIManagerOutputProtocol implementation
    func shiftsFetched(_ _shifts: [Shift]) {
        interactorOutput?.didFinishFetchingShifts(_shifts)
    }
    
    func onError() {
        interactorOutput?.shiftsFetchingFailed()
    }
}
