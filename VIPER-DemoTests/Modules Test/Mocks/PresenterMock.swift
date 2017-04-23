//
//  PresenterMock.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/23/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
@testable import VIPER_Demo

class PresenterMock: ShiftsListPresenterProtocol, ShiftsListInteractorOutputProtocol {

    //MARK: ShiftsListPresenterProtocol implementation - Properties
    weak var view: ShiftsListViewProtocol?
    var interactor: ShiftsListInteractorInputProtocol?
    var wireframe: ShiftsListWireFrameProtocol?
    
    //MARK: Properties to check methods get called
    var viewDidLoadCalled = false
    var showShiftDetailCalled = false
    var didFinishFetchingShiftsCalled = false
    var shiftsFetchingFailedCalled = false
    
    //MARK: functions
    func viewDidLoad() {
        interactor?.fetchShifts()
        viewDidLoadCalled = true
    }
    
    func showShiftDetail(forShift shift: Shift) {
        wireframe?.presentShiftDetailView(from : view!, forShift : shift)
        showShiftDetailCalled = true
    }
    
    //MARK: ShiftsListInteractorOutputProtocol implemetation
    func didFinishFetchingShifts(_ shifts: [Shift]) {
        view?.showShifts(with: shifts)
        didFinishFetchingShiftsCalled = true
    }
    
    func shiftsFetchingFailed() {
        view?.showError()
        shiftsFetchingFailedCalled = true
    }
}
