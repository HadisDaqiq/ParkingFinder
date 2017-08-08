//
//  LoginController.swift
//  RentMyparking
//
//  Created by Hadis Daqiq on 8/1/17.
//  Copyright © 2017 Hadis Daqiq. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFacebookAuthUI


class LoginController: UIViewController {
    
        @IBAction func loginButtonTapped(_ sender: UIButton) {
           }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            }
    }

extension LoginController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
        
        
        
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return }
        
        // 1
        guard let user = user
            else { return}
        // 2
        
//        UserService.show(forUID: user.uid) { (user) in
//            if let user = user {
//                // handle existing user
//                User.setCurrent(user)
//                
//                let storyboard = UIStoryboard(name: "Main", bundle: .main)
//                if let initialViewController = storyboard.instantiateInitialViewController() {
//                    self.view.window?.rootViewController = initialViewController
//                    self.view.window?.makeKeyAndVisible()
//                }
//            } else {
//                // handle new user
//                self.performSegue(withIdentifier: "toCreateUsername", sender: self)
//            }
//        }
    }
}

