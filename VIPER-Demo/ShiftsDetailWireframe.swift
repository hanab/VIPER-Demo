//
//  ShiftsDetailWireframe.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/20/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import UIKit

class ShiftsDetailWireframe : ShiftsDetailWireframeProtocol{
    
    //MARK: ShiftsDetailWireframeProtocol implementation
    static func assembleShiftDetailModule(forShift shift: Shift) -> UIViewController {
        let mainStoryboard =  UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "shiftDetailController")
        
        if let view = viewController as? ShiftsDetailViewController {
            let presenter: ShiftDetailPresenterProtocol = ShiftsDetailPresenter()
            let wireframe: ShiftsDetailWireframeProtocol = ShiftsDetailWireframe()
            
            view.presenter = presenter
            presenter.view = view
            presenter.shift = shift
            presenter.wireframe = wireframe
            
            return viewController
        }
        return UIViewController()
    }
}
