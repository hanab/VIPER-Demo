

import UIKit

//protocol from presenter to view
protocol ShiftsDetailViewProtocol: class {
    
    //MARK: Properties
    var presenter: ShiftDetailPresenterProtocol? { get set }
    
    //MARK: Functions
    func presentShiftDetail(forShift shift: Shift)
}

//for creating the detailview
protocol ShiftsDetailWireframeProtocol: class {
    
    //MARK: functions
    static func assembleShiftDetailModule(forShift shift: Shift) -> UIViewController
}

protocol ShiftDetailPresenterProtocol: class {
    
    //MARK: Properties
    var view: ShiftsDetailViewProtocol? { get set }
    var wireframe: ShiftsDetailWireframeProtocol? { get set }
    var shift: Shift? { get set }
    
   //MARK: functions
    func viewDidLoad()
}
