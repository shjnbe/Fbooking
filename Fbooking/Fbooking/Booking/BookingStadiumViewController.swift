//
//  BookingStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/2/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class BookingStadiumViewController: UIViewController {

    @IBOutlet weak var bookingStadiumTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bookingStadiumTableView.dataSource = self
        bookingStadiumTableView.delegate = self
    }
    @IBAction func onViewListBookingButtonTapped(_ sender: Any) {
        print("onViewListBookingButtonTapped")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListBookingViewController") as! ListBookingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func onFilterButtonTapped(_ sender: Any) {
        print("onFilterButtonTapped")
    }
    @IBAction func onSearchButtonTapped(_ sender: Any) {
        print("onSearchButtonTapped")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchBookingViewController") as! SearchBookingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func onBookingStadiumButtonTapped(_ sender:UIButton){
        print("onBookingStadiumButtonTapped")
    }

}

// TABLE VIEW DELEGATE, DATASOURCE
extension BookingStadiumViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookingStadiumTableViewCell", for: indexPath) as! BookingStadiumTableViewCell
        cell.btnBookingStadium.addTarget(self, action: #selector(self.onBookingStadiumButtonTapped(_:)), for: .touchUpInside)
        return cell
    }
    

}
extension BookingStadiumViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select Item At \(indexPath)")
    }
}

