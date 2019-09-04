//
//  FilterBookingViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/4/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class FilterBookingViewController: UIViewController {

    @IBOutlet weak var timeFilterCollectionView: UICollectionView!
    @IBOutlet weak var timeFilterCollectionViewHeightConstraint: NSLayoutConstraint!
    let cellSpacing: CGFloat = 16
    let sectionLeft: CGFloat = 16
    let sectionRight:CGFloat = 16
    var cellWidth: CGFloat = 100
    var cellHeigh: CGFloat = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timeFilterCollectionView.dataSource = self
        timeFilterCollectionView.delegate = self
        cellWidth = (timeFilterCollectionView.bounds.width - (2*cellSpacing+sectionLeft+sectionRight))/3
        cellHeigh = 50
        updateConstraintTimeFilterCollectionView()
    }
    func updateConstraintTimeFilterCollectionView() {
        let height = timeFilterCollectionView.collectionViewLayout.collectionViewContentSize.height
        timeFilterCollectionViewHeightConstraint.constant = height
        self.view.setNeedsLayout()
    }
    func showDatePicker() {
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
    }
    @IBAction func onSelectDateButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DatePickerViewController") as! DatePickerViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    @IBAction func onCloseFilterButtonTapped(_ sender: Any) {
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
    
}
// COLLECTION VIEW DELEGATE, DATASOURCE
extension FilterBookingViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilterBookingCollectionViewCell", for: indexPath) as! FilterBookingCollectionViewCell
        return cell
    }
    

}
extension FilterBookingViewController:UICollectionViewDelegate{

}
extension FilterBookingViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeigh)
    }

}
