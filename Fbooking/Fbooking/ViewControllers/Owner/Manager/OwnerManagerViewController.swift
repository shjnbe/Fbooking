//
//  OwnerManagerViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/18/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class OwnerManagerViewController: UIViewController {
    @IBOutlet weak var managerStadiumTableView: UITableView!
    var height:CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        managerStadiumTableView.dataSource = self
        managerStadiumTableView.delegate = self
    
    }
    
    @IBAction func onPickDateButtonTapped(_ sender: Any) {
        let vc = Storyboard.main.instantiateViewController(withIdentifier: "DatePickerViewController") as! DatePickerViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    @IBAction func onExtensionButtonTapped(_ sender: Any) {
        let vc = Storyboard.main.instantiateViewController(withIdentifier: "ManagerExtensionMenuViewController") as! ManagerExtensionMenuViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    @IBAction func onSelectStadiumButtonTapped(_ sender: Any) {
        let vc = Storyboard.main.instantiateViewController(withIdentifier: "SelectStadiumViewController") as! SelectStadiumViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
}
// TABLEVIEW DELEGATE, DATASOURCE
extension OwnerManagerViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManagerStadiumTableViewCell", for: indexPath) as! ManagerStadiumTableViewCell
        cell.numberOfStadiumCollectionView.delegate = self
        cell.numberOfStadiumCollectionView.dataSource = self
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }

}
extension OwnerManagerViewController:UITableViewDelegate{

}

// COLLECTION VIEW DELEGATE, DATASOURCE
extension OwnerManagerViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NumberOfStadiumCollectionViewCell", for: indexPath) as! NumberOfStadiumCollectionViewCell
        return cell
    }
}
extension OwnerManagerViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
}
extension OwnerManagerViewController:UICollectionViewDelegate{

}
