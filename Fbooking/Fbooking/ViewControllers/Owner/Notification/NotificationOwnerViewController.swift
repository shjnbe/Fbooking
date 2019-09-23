//
//  NotificationOwnerViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/23/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class NotificationOwnerViewController: UIViewController {

    @IBOutlet weak var notificationTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        notificationTableView.dataSource = self
        notificationTableView.delegate = self
    }
    

}
// TABLE VIEW DATASOURCE, DELEGATE
extension NotificationOwnerViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationOwnerTableViewCell", for:  indexPath) as! NotificationOwnerTableViewCell
        return cell
    }
    

}
extension NotificationOwnerViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
