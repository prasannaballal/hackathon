//
//  MoreViewController.swift
//  Hack
//
//  Created by Prasanna Vishwas Ballal on 18/07/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {
    @IBOutlet weak var signOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        signOut.layer.cornerRadius = 5.0
        signOut.layer.borderColor = UIColor.blue.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let root = self.navigationController?.viewControllers[0]
        root?.title = "More"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOutAction(_ sender: Any) {
        DispatchQueue.main.async {
            UIView.animate(withDuration: 0.5, animations: {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let navvc = storyboard.instantiateViewController(withIdentifier: "navvc") as! UINavigationController
                let login = storyboard.instantiateViewController(withIdentifier: "login")
                navvc.viewControllers = [login]
                UIApplication.shared.keyWindow?.rootViewController = navvc
            })
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
