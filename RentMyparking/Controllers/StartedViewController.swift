//
//  StartedViewController.swift
//  RentMyparking
//
//  Created by Hadis Daqiq on 8/1/17.
//  Copyright © 2017 Hadis Daqiq. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseAuthUI
import FBSDKLoginKit
import FirebaseFacebookAuthUI


class StartedViewController: UIViewController {
    @IBAction func getStartedButtonTapped(_ sender: Any) {
        print("Started button tapped")
        
        guard let authUI = FUIAuth.defaultAuthUI()
            else { return }
        // 2
        authUI.delegate = self
        
        
        // configure Auth UI for Facebook login
        let providers: [FUIAuthProvider] = [FUIFacebookAuth()]
        authUI.providers = providers
        
        
        // 3
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
    }
}


extension StartedViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
        print("log in")
        
        let storyboard = UIStoryboard(name: "Home", bundle: .main)
        if let initialViewController = storyboard.instantiateInitialViewController() {
            self.view.window?.rootViewController = initialViewController
            self.view.window?.makeKeyAndVisible()
        }
//        userRef.observeSingleEvent(of: .value, with: { [unowned self] (snapshot) in
//            if let user = User(snapshot: snapshot) {
//                print("Welcome back, \(user.username).")
//            } else {
//                self.performSegue(withIdentifier: "toCreateUsername", sender: self)
//            }
//        })

    }
}

