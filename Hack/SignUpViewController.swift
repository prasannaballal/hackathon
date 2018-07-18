//
//  SignUpViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/17/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signup: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        signup.layer.cornerRadius = 5.0
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        self.view.addSubview(backImageView)
        self.view.sendSubview(toBack: backImageView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
