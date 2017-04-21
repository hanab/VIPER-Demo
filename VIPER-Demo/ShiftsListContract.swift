//
//  ShiftsListContract.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

//
//  ShiftsContract.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import UIKit

//protocol from presenter to view
protocol ShiftsListViewProtocol: class {
    
    //MARK: Properties
    var presenter: ShiftsListPresenterProtocol? { get set }
    
    //MARK: functions
    func showShifts(with shifts: [Shift])
    func showError()
}

//protocole from presenter to view
protocol ShiftsListPresenterProtocol: class {
    
    //MARK: Properties
    weak var view: ShiftsListViewProtocol? { get set }
    var interactor: ShiftsListInteractorInputProtocol? { get set }
    var wireframe: ShiftsListWireFrameProtocol? { get set }
    
    //MARK: functions
    func viewDidLoad()
    func showShiftDetail(forShift shift: Shift)
}

//protocole from presenter to wireframe
protocol ShiftsListWireFrameProtocol: class {
    
    //MARK: Properties
    static func assembleShiftListModule() -> UIViewController
    
    //MARK: functions
    func presentShiftDetailView(from view: ShiftsListViewProtocol, forShift shift: Shift)
}

//protocol form interctor to presenter
protocol ShiftsListInteractorOutputProtocol: class {
    
    //MARK: functions
    func didFinishFetchingShifts(_ shifts: [Shift])
    func shiftsFetchingFailed()
}

// protocol from presenter to interactor
protocol ShiftsListInteractorInputProtocol: class {
    
    //MARK: Properties
    var interactorOutput: ShiftsListInteractorOutputProtocol? { get set }
    var apiResponseManager: ShiftsListAPIManagerInputProtocol? { get set }
    
    //MARK: functions
    func fetchShifts()
}

// protocol form interactor to Api response
protocol ShiftsListAPIManagerInputProtocol: class {
    
    //MARK: Properties
    var apiResponseDelegate : ShiftsListAPIManagerOutputProtocol? { get set }
    
    //MARK: functions
    func retrieveShiftsList()
}

//protocol from API response to interactor
protocol ShiftsListAPIManagerOutputProtocol: class {
    
    //MARK: functions
    func shiftsFetched(_ shifts: [Shift])
    func onError()
}


