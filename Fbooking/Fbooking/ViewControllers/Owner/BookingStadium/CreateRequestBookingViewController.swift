//
//  CreateRequestBookingViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class CreateRequestBookingViewController: UIViewController {
    @IBOutlet weak var lblTeamName: UITextField!
    
    @IBOutlet weak var lblPhoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func onSelectDateButtonTapped(_ sender: Any) {
        let vc = Storyboard.main.instantiateViewController(withIdentifier: "DatePickerViewController") as! DatePickerViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    

}
