//
//  ViewController.swift
//  VIPER-Demo
//
//  Created by Hana  Demas on 4/19/17.
//  Copyright © 2017 ___HANADEMAS___. All rights reserved.
//

import UIKit

class ShiftsListViewController: UIViewController {
    
    //MARK: Properties
    var presenter: ShiftsListPresenterProtocol? //ShiftsListViewProtocol implementation
    @IBOutlet var tableView: UITableView!
    var shiftList: [Shift] = []

    //MARK: Viewcontroller lifecycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Shifts"
        presenter?.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 80
    }
    
    //MARK: custom functions
    func setupCell(fromShift shift: Shift, cell: ShiftCustomTableViewCell) {
        cell.companyNameLabel.text = shift.companyName
        cell.workingHoursLabel.text = shift.shiftTime
        cell.hourlyPaymentLabel.text = "€ \(shift.hourlyWage)/hr"
        cell.jobTypeLabel.text = shift.workType
        cell.ratingLabel.text = "\(shift.rating)"
        cell.streetNameLabel.text = shift.streetName
        cell.ratingStarView.rating = shift.rating
        
        if shift.transpoertType == "Underground" {
            cell.transportTypeImage.image = UIImage(named: "underground")
        } else {
            cell.transportTypeImage.image = UIImage(named: "rail")
        }
    }
}

//MARK: extentions
extension ShiftsListViewController : ShiftsListViewProtocol {
    
    //MARK: ShiftsListViewProtocol implementation
    func showShifts(with shifts: [Shift]) {
        shiftList = shifts
        tableView.reloadData()
    }
    
    func showError() {
        print("Error Loading view")
    }
}

extension ShiftsListViewController : UITableViewDataSource, UITableViewDelegate {
    
    //MARK:  UITableViewDataSource implementation
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shiftList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ShiftCustomTableViewCell
        let shift = shiftList[indexPath.row]
        self.setupCell(fromShift: shift, cell: cell)
        
        return cell
    }
    
    //MARK: UITableViewDelegate implementation
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showShiftDetail(forShift: shiftList[indexPath.row])
    }
}
