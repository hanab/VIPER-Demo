//
//  ShiftsDetailViewController.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/20/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import UIKit
import Cosmos
import AlamofireImage
import MapKit

class ShiftsDetailViewController: UIViewController {
    
    //MARK: Properties
    var presenter: ShiftDetailPresenterProtocol?
    //UI Outlets
    @IBOutlet var ratingView: CosmosView!
    @IBOutlet var hourlyWageLabel: UILabel!
    @IBOutlet var companyImageView: UIImageView!
    @IBOutlet var workTypeLabel: UILabel!
    
    //MARK: ViewController lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Shift Detail"
        presenter?.viewDidLoad()
    }
}

//MARK: viewcontroller extention
extension ShiftsDetailViewController : ShiftsDetailViewProtocol {
    
    //MARK: ShiftsDetailViewProtocol implementation
    func presentShiftDetail(forShift shift: Shift) {
        ratingView.rating = shift.rating
        hourlyWageLabel.text = "€\(shift.hourlyWage)/hr"
        workTypeLabel.text = shift.workType
        let url = URL(string: shift.imageUrl)!
        companyImageView?.af_setImage(withURL: url)
    }
}
