//
//  ShiftsListPresenter.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation

class ShiftsListPresenter : ShiftsListPresenterProtocol {
    
    //MARK: ShiftsListPresenterProtocol implementation - Properties
    weak var view: ShiftsListViewProtocol?
    var interactor: ShiftsListInteractorInputProtocol?
    var wireframe: ShiftsListWireFrameProtocol?
    
    //MARK: functions
    func viewDidLoad() {
        interactor?.fetchShifts()
    }
    
    func showShiftDetail(forShift shift: Shift) {
        wireframe?.presentShiftDetailView(from : view!, forShift : shift)
    }
}

//MARK: extentions
extension ShiftsListPresenter : ShiftsListInteractorOutputProtocol {

    //MARK: ShiftsListInteractorOutputProtocol implemetation
    func didFinishFetchingShifts(_ shifts: [Shift]) {
        view?.showShifts(with: shifts)
    }
    
    func shiftsFetchingFailed() {
        view?.showError()
    }
}
