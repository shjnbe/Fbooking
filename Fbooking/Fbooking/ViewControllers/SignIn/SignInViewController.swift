//
//  SignInViewController.swift
//  Fbooking
//
//  Created by Đào Thanh Hải on 8/29/19.
//  Copyright © 2019 Tuan Vu. All rights reserved.
//

import UIKit
import AccountKit
class SignInViewController: UIViewController {
    var accountKit: AccountKitManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        if accountKit == nil {
            accountKit = AccountKitManager(responseType: .authorizationCode)
        }
       loginWithPhone()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if accountKit?.currentAccessToken != nil {
            // if the user is already logged in, go to the main screen
//            self.gotoHomeViewController()
        }
        else {
            // Show the login screen
        }
    }
    
    
    func prepareLoginViewController(loginViewController: AKFViewController) {
        loginViewController.delegate = self
        loginViewController.uiManager = SkinManager(skinType: .translucent, primaryColor: UIColor.blue)
    }
    func loginWithPhone(){
        let inputState = UUID().uuidString
        let vc = (accountKit?.viewControllerForPhoneLogin(with: nil, state: inputState))!
        vc.isSendToFacebookEnabled = true
        vc.defaultCountryCode = "VN"
        self.prepareLoginViewController(loginViewController: vc)
        self.present(vc as UIViewController, animated: true, completion: nil)
    }
    func gotoHomeViewController()  {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension SignInViewController: AKFViewControllerDelegate {
    // ACCOUNT KIT DELEGATE
    func viewController(_ viewController: UIViewController & AKFViewController, didCompleteLoginWith code: String, state: String) {
        print("didCompleteLoginWith code")
        _ = ApiClient.loginAccountKid(authoriserCode: code, phone: nil, success: { (response) in
            print(response)
        }, fail: { (statusCode, error) in
            print("status: \(statusCode)")
            print("error: \(String(describing: error?.description))")
        })

    }
    func viewController(_ viewController: UIViewController & AKFViewController, didCompleteLoginWith accessToken: AKFAccessToken, state: String) {
        print("didCompleteLoginWith accessToken")
        //        self.gotoHomeViewController()
    }

    func viewControllerDidCancel(_ viewController: UIViewController & AKFViewController) {
        
    }
    func viewController(_ viewController: UIViewController & AKFViewController, didFailWithError error: Error) {
        print("didFailWithError error")
    }
}
