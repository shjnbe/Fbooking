//
//  SearchBookingViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/2/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SearchBookingViewController: UIViewController {

    @IBOutlet weak var searchBookingTableview: UITableView!
    @IBOutlet weak var txtSearchBooking: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBookingTableview.dataSource = self
        searchBookingTableview.delegate = self
        txtSearchBooking.attributedPlaceholder = NSAttributedString(string: "Tìm kiếm",attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    @IBAction func onBackButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func onBookingStadiumButtonTapped(_ sender:UIButton){
        print("onBookingStadiumButtonTapped")
    }
}

// TABLE VIEW DATASOURCE, DELEGATE
extension SearchBookingViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchBookingTableViewCell", for: indexPath) as! SearchBookingTableViewCell
        cell.btnBookingStadium.addTarget(self, action: #selector(self.onBookingStadiumButtonTapped(_:)), for: .touchUpInside)
        return cell
    }
}
extension SearchBookingViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select Item At \(indexPath)")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

