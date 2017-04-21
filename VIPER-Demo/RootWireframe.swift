//
//  RootWireframe.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import UIKit

//class responsibel for the initial rooting(root routing)
class RootWireframe : RootWireframeProtocol {
   
    //MARK: RootWireframeProtocol implementation
    class func presentShiftsView(in window: UIWindow){
        window.makeKeyAndVisible()
        window.rootViewController = ShiftsListWireframe.assembleShiftListModule()
    }
}
