//
//  AppDelegateTest.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/22/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import XCTest
@testable import VIPER_Demo

class AppDelegateTest: XCTestCase {
    
    //MARK: Properties
    var applicationDelegate: AppDelegate = AppDelegate();
    var window: UIWindow? = UIWindow()

    //MARK: Generated Functions
   override func setUp() {
        super.setUp()
        applicationDelegate.window = window
    }
    
    override func tearDown() {
        super.tearDown()
        window = nil
    }
    
    //MARK: Test cases to test application launchs sucessfully
    func testWindowIsKeyAfterApplicationLaunch() {
        let applicationDelegate = UIApplication.shared.delegate
        
        if let applicationDelegate = applicationDelegate {
            if let window = applicationDelegate.window {
                if let window = window {
                    XCTAssertTrue(window.isKeyWindow, "Application delegate main window should be set")
                } else {
                    XCTFail("Main window key should not be nil")
                }
            } else {
                XCTFail("Main window key should not be nil")
            }
        } else {
            XCTFail("shared application should have a delegate")
        }
    }
    
    func testDidFinishLaunchingWithOptionsReturnsTrue() {
        XCTAssertTrue(applicationDelegate.application(UIApplication.shared, didFinishLaunchingWithOptions: nil), "should return true from didFinishLaunchingWithOptions")
    }
}
