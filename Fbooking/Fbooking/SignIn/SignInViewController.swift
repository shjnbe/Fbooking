//
//  SignInViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 8/29/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    @IBOutlet weak var btnSelectPhoneAreaCode: UIButton!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBOutlet weak var viewUseWhatsAppContainer: UIView!
    @IBOutlet weak var btnUseWhatsApp: UIButton!
    @IBOutlet weak var btnUseSMS: UIButton!
    @IBOutlet weak var tvCaption: UITextView!
    @IBOutlet weak var lblUse: UILabel!
    @IBOutlet weak var lblWhatsApp: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        initView()
    }
    
    /* init view */
    func initView() {
        txtPhoneNumber.text = "+84 "
        txtPhoneNumber.becomeFirstResponder()
        txtPhoneNumber.addTarget(self, action: #selector(self.txtPhoneNumberDidChange(_:)), for: .editingChanged)
        btnUseSMS.isEnabled = false
        btnUseSMS.alpha = 0.5
        btnUseWhatsApp.isEnabled = false
        viewUseWhatsAppContainer.backgroundColor = UIColor(hexString: "#D8D6D6", alpha: 0.5)
        viewUseWhatsAppContainer.layer.borderColor = UIColor(hexString: "#BDC3C7",alpha: 0.5).cgColor
        viewUseWhatsAppContainer.layer.borderWidth = 1
        lblUse.textColor = UIColor(hexString: "#BDC3C7")
        lblWhatsApp.textColor = UIColor(hexString: "#BDC3C7")
        let string = "Fbooking sử dụng Account Kit, một công nghệ của Facebook, để đăng nhập cho bạn. Bạn không cần có tài khoản Facebook. Có thể áp dụng cước phí nhắn tin và dùng dữ liệu. Tìm hiểu cách Facebook sử dụng thông tin của bạn."
        let range = (string as NSString).range(of: "Tìm hiểu cách Facebook sử dụng thông tin của bạn.")
        let attributedString = NSMutableAttributedString(string: string)        
        attributedString.addAttribute(NSAttributedString.Key.link, value: NSURL(string: "https://www.accountkit.com/faq")!, range: range)
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSNumber(value: 1), range: range)
        attributedString.addAttribute(NSAttributedString.Key.underlineColor, value: UIColor.black, range: range)
        tvCaption.attributedText = attributedString
    }
    
    /* text field phone number did change function */
    @objc func txtPhoneNumberDidChange(_ textField:UITextField){
        if textField.text == "" {
            print("Show Dialog Select Phone Area Code")
            self.showDialogSelectPhoneAreaCode()
        }
        if textField.text!.count >= 6{
            print("Enable Button")
            btnUseSMS.isEnabled = true
            btnUseSMS.alpha = 1
            btnUseWhatsApp.isEnabled = true
            viewUseWhatsAppContainer.backgroundColor = UIColor(hexString: "#F2F1F1", alpha: 1)
            viewUseWhatsAppContainer.layer.borderColor = UIColor(hexString: "#000000",alpha: 1).cgColor
            viewUseWhatsAppContainer.layer.borderWidth = 1
            lblUse.textColor = UIColor(hexString: "#000000")
            lblWhatsApp.textColor = UIColor(hexString: "#000000")
        }
        if textField.text!.count < 6 && textField.text!.count > 0{
            print("Disable Button")
            btnUseSMS.isEnabled = false
            btnUseSMS.alpha = 0.5
            btnUseWhatsApp.isEnabled = false
            viewUseWhatsAppContainer.backgroundColor = UIColor(hexString: "#D8D6D6", alpha: 0.5)
            viewUseWhatsAppContainer.layer.borderColor = UIColor(hexString: "#BDC3C7",alpha: 0.5).cgColor
            viewUseWhatsAppContainer.layer.borderWidth = 1
            lblUse.textColor = UIColor(hexString: "#BDC3C7")
            lblWhatsApp.textColor = UIColor(hexString: "#BDC3C7")
        }
        
    }
    
    /* Show Dialog Select Phone Area Code */
    func showDialogSelectPhoneAreaCode() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SelectPhoneAreaCodeViewController") as! SelectPhoneAreaCodeViewController
        vc.closeCallBack = {
            
        }
        self.addChild(vc)
        vc.view.frame = self.view.frame
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    // ACTION OUTLET
    @IBAction func onButtonSelectPhoneAreaCodeTapped(_ sender: Any) {
        self.showDialogSelectPhoneAreaCode()
    }
}
