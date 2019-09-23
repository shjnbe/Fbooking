//
//  ManagerExtensionMenuViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/19/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class ManagerExtensionMenuViewController: UIViewController {
    @IBOutlet weak var viewTap: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onTapOtherView(_:)))
        viewTap.addGestureRecognizer(tap)
    }
    @objc func onTapOtherView(_ sender:UITapGestureRecognizer){
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
    
    @IBAction func onSetupTimeAndPriceButtonTapped(_ sender: Any) {
    }
    @IBAction func onUpdateInfomationButtonTapped(_ sender: Any) {
    }
    

}
