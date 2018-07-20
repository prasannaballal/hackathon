//
//  DonationViewController.swift
//  Hack
//
//  Created by Prasanna Vishwas Ballal on 19/07/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class DonationViewController: UIViewController {
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var paypal: UIButton!
    @IBOutlet weak var billdesk: UIButton!
    @IBOutlet weak var paytm: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        self.view.addSubview(backImageView)
        self.view.sendSubview(toBack: backImageView)
        // Do any additional setup after loading the view.
        centerView.layer.cornerRadius = centerView.frame.size.width / 2
        centerView.clipsToBounds = true
        
        paypal.layer.borderColor = UIColor.white.cgColor
        paypal.layer.borderWidth = 1.0
        paypal.layer.cornerRadius = 5.0
        
        
        billdesk.layer.borderColor = UIColor.white.cgColor
        billdesk.layer.borderWidth = 1.0
        billdesk.layer.cornerRadius = 5.0
        
        paytm.layer.borderColor = UIColor.white.cgColor
        paytm.layer.borderWidth = 1.0
        paytm.layer.cornerRadius = 5.0
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let root = self.navigationController?.viewControllers[0]
        root?.title = "Donation"
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
