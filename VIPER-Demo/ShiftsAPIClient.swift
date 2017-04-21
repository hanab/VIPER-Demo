//
//  ShiftsAPIClient.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

//API get endpoint
fileprivate let shiftsGetEndpoint = "http://private-6f2fb-shifts1.apiary-mock.com/shifts"

//class resposible for data fetching
class ShiftsAPIClent : ShiftsListAPIManagerInputProtocol{
    
    //MARK: Properties
    var apiResponseDelegate: ShiftsListAPIManagerOutputProtocol?
    
    //MARK: ShiftsListAPIManagerOutputProtocol implementation
    func retrieveShiftsList(){
        Alamofire
            .request(shiftsGetEndpoint, method: .get)
            .validate()
            .responseArray(completionHandler: { (response: DataResponse<[Shift]>) in
                switch response.result {
                case .success(let shifts):
                    self.apiResponseDelegate?.shiftsFetched(shifts)
                case .failure( _):
                    self.apiResponseDelegate?.onError()
                }
            })
    }
}
