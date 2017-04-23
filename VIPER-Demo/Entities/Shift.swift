//
//  Shift.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import Foundation
import ObjectMapper

//MARK: Shift custom object
struct Shift {
    
    //MARK: Properties
    var companyName = ""
    var shiftTime = ""
    var rating = 0.00
    var hourlyWage = 0.00
    var streetName = ""
    var transpoertType = ""
    var workType  = ""
    var imageUrl = ""
}

//MARK: Shifts extention for json mapping
extension Shift: Mappable {
   
    //MARK: Init
    init?(map: Map) {
    }
    
    //MARK: Mappable protocol implementation
    mutating func mapping(map: Map) {
        companyName      <- map["company_name"]
        shiftTime     <- map["shift_time"]
        rating     <- map["rating"]
        hourlyWage     <- map["hourly_wage"]
        streetName   <- map["street_name"]
        transpoertType      <- map["transpoert_type"]
        workType       <- map["work_type"]
        imageUrl  <- map["image_url"]
    }
}
