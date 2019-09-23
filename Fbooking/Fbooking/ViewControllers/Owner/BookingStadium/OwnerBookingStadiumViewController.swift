//
//  OwnerBookingStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class OwnerBookingStadiumViewController: UIViewController {

    @IBOutlet weak var tfSearch: UITextField!
    @IBOutlet weak var ownerBookingStadiumTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ownerBookingStadiumTableView.dataSource = self
        ownerBookingStadiumTableView.delegate = self
    }
    
    @IBAction func onCreateRequestBookingButtonTapped(_ sender: Any) {
    }
    @IBAction func onExtensionMenuButtonTapped(_ sender: Any) {
        let vc = Storyboard.main.instantiateViewController(withIdentifier: "OwnerBookingExtensionMenuViewController") as! OwnerBookingExtensionMenuViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
}

// TABLEVIEW DELEGATE, DATASOURCE
extension OwnerBookingStadiumViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OwnerBookingStadiumTableViewCell", for: indexPath) as! OwnerBookingStadiumTableViewCell
        return cell
    }
    

}
extension OwnerBookingStadiumViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}
