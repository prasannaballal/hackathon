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
        
//            DispatchQueue.main.async {
//                UIView.animate(withDuration: 0.5, animations: {
//                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                    let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
//                    let dashboardvc = storyboard.instantiateViewController(withIdentifier: "pattabbarvc") as! UITabBarController
//                    navvc.viewControllers = [dashboardvc]
//                    UIApplication.shared.keyWindow?.rootViewController = navvc
//                })
//                
//            }
        
//        var tabbar = ""
//        if username.text == "patient" {
//            tabbar = "pattabbarvc"
//        } else if username.text == "doctor" {
//            tabbar = "doctabbarvc"
//        }
        
        
        if validateUsernamePassword() {
            DispatchQueue.main.async {
                self.activityIndicator.startAnimating()
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                DispatchQueue.main.async {
                    
                    UIView.animate(withDuration: 0.5, animations: {
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
                        let dashboardvc = storyboard.instantiateViewController(withIdentifier: "pattabbarvc") as! UITabBarController
                        dashboardvc.selectedIndex = 2
                        navvc.viewControllers = [dashboardvc]
                        UIApplication.shared.keyWindow?.rootViewController = navvc
                    })
                    
                }
            }
            
//            DispatchQueue.main.async {
//                self.activityIndicator.startAnimating()
//            }
//
//            let url = URL(string: "http://10.2.231.133:8081/user/login")!
//            var request = URLRequest(url: url)
//            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//            request.httpMethod = "POST"
//            let postString = "username=\(username.text)&password=\(password.text)"
//            request.httpBody = postString.data(using: .utf8)
//            let task = URLSession.shared.dataTask(with: request) { data, response, error in
//                DispatchQueue.main.async {
//                    self.activityIndicator.stopAnimating()
//                }
//                guard let data = data, error == nil else {                                                 // check for fundamental networking error
//                    print("error=\(error?.localizedDescription)")
//                    return
//                }
//                
//                if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode == 200 {           // check for http errors
//                    print("statusCode should be 200, but is \(httpStatus.statusCode)")
//                    print("response = \(response)")
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                        DispatchQueue.main.async {
//                            
//                            UIView.animate(withDuration: 0.5, animations: {
//                                let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                                let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
//                                let dashboardvc = storyboard.instantiateViewController(withIdentifier: "pattabbarvc") as! UITabBarController
//                                navvc.viewControllers = [dashboardvc]
//                                UIApplication.shared.keyWindow?.rootViewController = navvc
//                            })
//                            
//                        }
//                    }
//                }
//                
//                let responseString = String(data: data, encoding: .utf8)
//                print("responseString = \(responseString)")
//            }
//            task.resume()
        } else {
            let alertVC = UIAlertController(title: "Login", message: "Please enter username and password", preferredStyle: UIAlertControllerStyle.alert)
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertVC.addAction(defaultAction)
            self.present(alertVC, animated: true, completion: nil)
        }
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

