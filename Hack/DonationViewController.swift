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

    override func viewDidLoad() {
        super.viewDidLoad()
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        self.view.addSubview(backImageView)
        self.view.sendSubview(toBack: backImageView)
        // Do any additional setup after loading the view.
        centerView.layer.cornerRadius = centerView.frame.size.width / 2
        centerView.clipsToBounds = true
        
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
