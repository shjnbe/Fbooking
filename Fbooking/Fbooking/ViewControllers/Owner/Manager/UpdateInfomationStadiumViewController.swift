//
//  UpdateInfomationStadiumViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 9/19/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class UpdateInfomationStadiumViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSelectImageButtonTapped(_ sender: Any) {
        self.displayUploadImageDialog()
    }
    func displayUploadImageDialog() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        let alertController = UIAlertController(title: "", message: "Chọn Ảnh", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "Huỷ", style: .cancel, handler: {(_ action: UIAlertAction) -> Void in
            alertController.dismiss(animated: true) {() -> Void in }
        })
        alertController.addAction(cancelAction)
        let takePhotoAction = UIAlertAction(title: "Chụp Ảnh", style: .default, handler: {(_ action: UIAlertAction) -> Void in
            if UI_USER_INTERFACE_IDIOM() == .pad {
                OperationQueue.main.addOperation({() -> Void in
                    picker.sourceType = .camera
                    self.present(picker, animated: true) {() -> Void in }
                })
            }
            else {
                if !UIImagePickerController.isSourceTypeAvailable(.camera) {
                    let passwordAlert = UIAlertController(title: "Lỗi", message: "Không tìm thấy máy ảnh", preferredStyle: .alert)
                    let yesButton = UIAlertAction(title: "OK", style: .default, handler: {(_ action: UIAlertAction) -> Void in
                        //Handel your yes please button action here
                        passwordAlert.dismiss(animated: true) {() -> Void in }
                    })
                    passwordAlert.addAction(yesButton)
                    self.present(passwordAlert, animated: true) {() -> Void in }
                }
                else {
                    picker.sourceType = .camera
                    self.present(picker, animated: true) {() -> Void in }
                }
            }
        })
        alertController.addAction(takePhotoAction)
        let cameraRollAction = UIAlertAction(title: "Chọn ảnh từ thư viện", style: .default, handler: {(_ action: UIAlertAction) -> Void in
            if UI_USER_INTERFACE_IDIOM() == .pad {
                OperationQueue.main.addOperation({() -> Void in
                    picker.sourceType = .photoLibrary
                    self.present(picker, animated: true) {() -> Void in }
                })
            }
            else {
                picker.sourceType = .photoLibrary
                self.present(picker, animated: true) {() -> Void in }
            }
        })
        alertController.addAction(cameraRollAction)
        //        alertController.view.tintColor = Colors.NavTitleColor
        present(alertController, animated: true) {() -> Void in }
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let img = info[.editedImage] as? UIImage
        {
        }
        else if let img = info[.originalImage] as? UIImage
        {
        }
        
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

}
