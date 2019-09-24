//
//  SetupTimeAndPriceViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/21/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SetupTimeAndPriceViewController: UIViewController {

    @IBOutlet weak var listParentStadiumCollectionView: UICollectionView!
    
    
    @IBOutlet weak var listParentStadiumCollectionViewWidthConstraint: NSLayoutConstraint!
    var currentCell:SetupTimeAndPriceCollectionViewCell!
    var cellWidth:CGFloat = 100
    var cellHeight:CGFloat = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        cellWidth = self.view.bounds.width/4
    listParentStadiumCollectionViewWidthConstraint.constant = cellWidth * 5
        // Do any additional setup after loading the view.
        listParentStadiumCollectionView.dataSource = self
        listParentStadiumCollectionView.delegate = self
        
    }
}
// COLLECTION VIEW DATASOURCE, DELEGATE
extension SetupTimeAndPriceViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SetupTimeAndPriceCollectionViewCell", for: indexPath) as! SetupTimeAndPriceCollectionViewCell
        if(indexPath.row == 0) { //for first cell in the collection
            cell.isSelected = true
        } else {
            cell.isSelected = false
        }
        return cell
    }
    

}
extension SetupTimeAndPriceViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
extension SetupTimeAndPriceViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
