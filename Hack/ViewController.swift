//
//  ViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/16/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
// 10.2.231.133:8081

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var forgotPass: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.viewSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewSetup() {
        activityIndicator.stopAnimating()
        login.layer.cornerRadius = 5.0
        forgotPass.layer.cornerRadius = 5.0
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        self.view.addSubview(backImageView)
        self.view.sendSubview(toBack: backImageView)
        
    }

    @IBAction func loginAction(_ sender: Any) {
        
         DispatchQueue.main.async {
            self.activityIndicator.startAnimating()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            DispatchQueue.main.async {
                
                UIView.animate(withDuration: 0.5, animations: {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
                    let dashboardvc = storyboard.instantiateViewController(withIdentifier: "tabbarvc") as! UITabBarController
                    navvc.viewControllers = [dashboardvc]
                    UIApplication.shared.keyWindow?.rootViewController = navvc
                })
                
            }
        }
        
        
    }
    
    @IBAction func forgotPassAction(_ sender: Any) {
    }
    
    @IBAction func createAccountAction(_ sender: Any) {
    }

}

