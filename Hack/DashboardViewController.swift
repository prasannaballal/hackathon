//
//  DashboardViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/17/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var buttonIcon1: UIImageView!
    
    @IBOutlet weak var myTracker: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        view.addSubview(backImageView)
        view.sendSubview(toBack: backImageView)
        profilePic.layer.cornerRadius = profilePic.frame.size.width / 2
        profilePic.clipsToBounds = true
        
//        buttonIcon1.sendSubview(toBack: self.myTracker)
        view1.layer.cornerRadius = 10.0
        view2.layer.cornerRadius = 10.0
        view3.layer.cornerRadius = 10.0
        view4.layer.cornerRadius = 10.0

    }
    
    override func viewWillAppear(_ animated: Bool) {
        let root = self.navigationController?.viewControllers[0]
        root?.title = "Dashboard"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1Action(_ sender: Any) {
    }
    @IBAction func button2Action(_ sender: Any) {
    }
    @IBAction func button3Action(_ sender: Any) {
    }
    @IBAction func button4Action(_ sender: Any) {
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
