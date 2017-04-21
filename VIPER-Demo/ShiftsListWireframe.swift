//
//  ShiftsListWireframe.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import UIKit

class ShiftsListWireframe : ShiftsListWireFrameProtocol {
    
    //MARK: ShiftsListWireFrameProtocol implementation
    static func assembleShiftListModule() -> UIViewController {
        let  mainStoryboard =  UIStoryboard(name: "Main", bundle: Bundle.main)
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "ShiftsNavigationController")
        
        if let view = navController.childViewControllers.first as? ShiftsListViewController {
            let presenter: ShiftsListPresenterProtocol & ShiftsListInteractorOutputProtocol = ShiftsListPresenter()
            let interactor: ShiftsListInteractorInputProtocol & ShiftsListAPIManagerOutputProtocol = ShiftsListInteractor()
            let apiDataManager: ShiftsListAPIManagerInputProtocol = ShiftsAPIClent()
            let wireframe: ShiftsListWireFrameProtocol = ShiftsListWireframe()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireframe = wireframe
            presenter.interactor = interactor
            interactor.interactorOutput = presenter
            interactor.apiResponseManager = apiDataManager
            apiDataManager.apiResponseDelegate = interactor
            
            return navController
        }
        return  UIViewController()
    }

    func presentShiftDetailView(from view: ShiftsListViewProtocol, forShift shift: Shift) {
        let shiftDetailView = ShiftsDetailWireframe.assembleShiftDetailModule(forShift: shift)
        
        if let initialView = view as? UIViewController {
            initialView.navigationController?.pushViewController(shiftDetailView, animated: true)
        }
    }
}
