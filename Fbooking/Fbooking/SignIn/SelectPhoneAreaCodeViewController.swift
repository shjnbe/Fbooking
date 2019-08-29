//
//  SelectPhoneAreaCodeViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 8/30/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SelectPhoneAreaCodeViewController: UIViewController {

    @IBOutlet weak var selectPhoneAreaCodeTableView: UITableView!
    
    var closeCallBack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        selectPhoneAreaCodeTableView.dataSource = self
        selectPhoneAreaCodeTableView.delegate = self
    }

}

// TABLE VIEW DATASOURCE, DELEGATE
extension SelectPhoneAreaCodeViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectPhoneAreaCodeTableViewCell", for: indexPath) as! SelectPhoneAreaCodeTableViewCell
        return cell
    }
    
}
extension SelectPhoneAreaCodeViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.closeCallBack?()
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
