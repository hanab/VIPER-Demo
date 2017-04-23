//
//  ShiftCustomTableViewCell.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/20/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import UIKit
import Cosmos

// cuatom tableview cell
class ShiftCustomTableViewCell: UITableViewCell {

    //MARK: Properties
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var workingHoursLabel: UILabel!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var hourlyPaymentLabel: UILabel!
    @IBOutlet var transportTypeImage: UIImageView!
    @IBOutlet var streetNameLabel: UILabel!
    @IBOutlet var jobTypeLabel: UILabel!
    @IBOutlet var ratingStarView: CosmosView!
}
