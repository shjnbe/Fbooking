//
//  BookingStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/2/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class HomeBookingStadiumViewController: UIViewController {

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
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FilterBookingViewController") as! FilterBookingViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    @IBAction func onSearchButtonTapped(_ sender: Any) {
        print("onSearchButtonTapped")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchBookingViewController") as! SearchBookingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func onBookingStadiumButtonTapped(_ sender:UIButton){
        print("onBookingStadiumButtonTapped")
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BookingStadiumViewController") as! BookingStadiumViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

// TABLE VIEW DELEGATE, DATASOURCE
extension HomeBookingStadiumViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeBookingStadiumTableViewCell", for: indexPath) as! HomeBookingStadiumTableViewCell
        cell.btnBookingStadium.addTarget(self, action:#selector(self.onBookingStadiumButtonTapped(_:)), for: .touchUpInside)
        return cell
    }
    

}
extension HomeBookingStadiumViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select Item At \(indexPath)")
    }
}

