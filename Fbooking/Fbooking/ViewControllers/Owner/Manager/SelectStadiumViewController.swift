//
//  SelectStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/19/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SelectStadiumViewController: UIViewController {

    @IBOutlet weak var selectStadiumTableView: UITableView!
    @IBOutlet weak var viewTap: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        selectStadiumTableView.dataSource = self
        selectStadiumTableView.delegate = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onViewOtherTapped(_:)))
        viewTap.addGestureRecognizer(tap)
    }
    @objc func onViewOtherTapped(_ sender:UITapGestureRecognizer){
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
}

// TABLE VIEW DATASOURCE, DELEGATE
extension SelectStadiumViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SelectStadiumTableViewCell", for: indexPath) as! SelectStadiumTableViewCell
        return cell
    }
    

}
extension SelectStadiumViewController:UITableViewDelegate{

}
