//
//  LogInVC.swift
//  Twitter
//
//  Created by Orlando Vargas on 9/24/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginView: UIViewController {
    
    var loginButton = OVButton(backgroundColor: .init(red: 29/255, green: 161/255, blue: 242/255, alpha: 1), title: "Login")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        loginButton.addTarget(self, action: #selector(onLoginButtonPress), for: .touchUpInside)
    }
    
    @objc func onLoginButtonPress() {
        //let myUrl = "https://api.twitter.com/oauth/request_token"
        
        
        let navigationVC = UINavigationController(rootViewController: HomeTVC())
        
        navigationVC.modalPresentationStyle = .fullScreen
        
        self.present(navigationVC, animated: true, completion: nil)
        
//        TwitterAPICaller.client?.login(url: myUrl, success: {
//            // Start homeScreen
//            print("Was able to log in!")
//        }, failure: { Error in
//            print("Couldn't log in!")
//        })
    }
    
    func configure() {
        view.addSubview(loginButton)
        //view.backgroundColor = .systemBackground
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 54),
            loginButton.widthAnchor.constraint(equalToConstant: view.bounds.width/2)
        ])
    }
}
