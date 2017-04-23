//
//  ShiftsDetailPresenter.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/20/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation

class ShiftsDetailPresenter : ShiftDetailPresenterProtocol {
    
    //MARK: ShiftDetailPresenterProtocol - properties
    var view: ShiftsDetailViewProtocol?
    var wireframe: ShiftsDetailWireframeProtocol?
    var shift: Shift?
    
    //MARK: Functions
    func viewDidLoad(){
        view?.presentShiftDetail(forShift: shift!)
    }
}
