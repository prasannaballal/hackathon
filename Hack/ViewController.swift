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
        
        
        
        // http://cl-service-route-cl-service.f-az.uk.pass.intranet.db.com/users/roles
        // http://10.2.231.133:8081/user/roles
//                let url = URL(string: "http://cl-service-route-cl-service.f-az.uk.pass.intranet.db.com/users/roles")
//        
//                let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
//                    if let _ = data{
//                        let newData = String(data: data!, encoding: String.Encoding.utf8)
//                    }
//        
//        
//                    //            print("Data:",String(data: data!, encoding: String.Encoding.utf8) ?? "")
//        
//                    //            DispatchQueue.main.async {
//                    //                self.textArea.text = String(data: data!, encoding: String.Encoding.utf8)
//                    //            }
//                    print("Error",error?.localizedDescription)
//                    print("Response:",response)
//        
//                }
        //
        //
        //        task.resume()
            DispatchQueue.main.async {
                
                UIView.animate(withDuration: 0.5, animations: {
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
                    let dashboardvc = storyboard.instantiateViewController(withIdentifier: "pattabbarvc") as! UITabBarController
                    navvc.viewControllers = [dashboardvc]
                    UIApplication.shared.keyWindow?.rootViewController = navvc
                })
                
            }
        
        
//        if validateUsernamePassword() {
//            var tabbar = ""
//            if username.text == "patient" {
//                tabbar = "pattabbarvc"
//            } else if username.text == "doctor" {
//                tabbar = "doctabbarvc"
//            }
//            
//            DispatchQueue.main.async {
//                self.activityIndicator.startAnimating()
//            }
//            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                DispatchQueue.main.async {
//                    
//                    UIView.animate(withDuration: 0.5, animations: {
//                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                        let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
//                        let dashboardvc = storyboard.instantiateViewController(withIdentifier: tabbar) as! UITabBarController
//                        navvc.viewControllers = [dashboardvc]
//                        UIApplication.shared.keyWindow?.rootViewController = navvc
//                    })
//                    
//                }
//            }
//        } else {
//            let alertVC = UIAlertController(title: "Login", message: "Please enter username and password", preferredStyle: UIAlertControllerStyle.alert)
//            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alertVC.addAction(defaultAction)
//            self.present(alertVC, animated: true, completion: nil)
//        }
    }
    
    @IBAction func forgotPassAction(_ sender: Any) {
    }
    
    @IBAction func createAccountAction(_ sender: Any) {
    }
    
    func validateUsernamePassword() -> Bool {
        if let usrname = username.text?.isEmpty, usrname {
            return false
        }
        
        if let pwd = password.text?.isEmpty,
            pwd{
            return false
        }
        
        return true
    }
    
}

