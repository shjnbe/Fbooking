//
//  BookingStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/5/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class BookingStadiumViewController: UIViewController {
    @IBOutlet weak var lblNameStadium: UILabel!
    @IBOutlet weak var timeBookingCollectionView: UICollectionView!
    @IBOutlet weak var timeBookingCollectionViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var teamBookingCollectionView: UICollectionView!
    @IBOutlet weak var teamBookingCollectionViewHeightConstraint: NSLayoutConstraint!
    let cellSpacing: CGFloat = 8
    let sectionLeft: CGFloat = 8
    let sectionRight:CGFloat = 8
    var cellWidth: CGFloat = 100
    var cellHeight: CGFloat = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timeBookingCollectionView.dataSource = self
        timeBookingCollectionView.delegate = self
        teamBookingCollectionView.dataSource = self
        teamBookingCollectionView.delegate = self
        updateConstraintCollectionView()
        
    }
    func updateConstraintCollectionView() {
        cellWidth = (view.bounds.width - (cellSpacing+sectionLeft+sectionRight))/2
        cellHeight = 72
        timeBookingCollectionViewHeightConstraint.constant = timeBookingCollectionView.collectionViewLayout.collectionViewContentSize.height
        teamBookingCollectionViewHeightConstraint.constant = teamBookingCollectionView.collectionViewLayout.collectionViewContentSize.height
        self.view.setNeedsLayout()
    }
    @IBAction func onBackButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func onShowDatePickerButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DatePickerViewController") as! DatePickerViewController
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    @IBAction func onBookingButtonTapped(_ sender: Any) {
        
    }
    
}
// COLLECTION VIEW DATASOURCE, DELEGATE
extension BookingStadiumViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.timeBookingCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TimeBookingCollectionViewCell", for: indexPath) as! TimeBookingCollectionViewCell
            return cell
        }
        if collectionView == self.teamBookingCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TeamBookingCollectionViewCell", for: indexPath) as! TeamBookingCollectionViewCell
            return cell
        }
        return UICollectionViewCell()
    }
    

}
extension BookingStadiumViewController:UICollectionViewDelegate{

}
extension BookingStadiumViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
