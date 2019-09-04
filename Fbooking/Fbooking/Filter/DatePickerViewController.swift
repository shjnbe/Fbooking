//
//  DatePickerViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/4/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onCancelDatePickerButtonTapped(_ sender: Any) {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
    @IBAction func onDoneDatePickerButtonTapped(_ sender: Any) {
    }
    

}
