//
//  ConsultationViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/19/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class ConsultationViewController: UIViewController {

    @IBOutlet weak var tab1: UIButton!
    @IBOutlet weak var tab2: UIButton!
    @IBOutlet weak var tab3: UIButton!
    @IBOutlet weak var tab4: UIButton!
    @IBOutlet weak var tab5: UIButton!
    @IBOutlet weak var tab6: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backImageView = UIImageView(image: UIImage(named: "background2"))
        self.view.addSubview(backImageView)
        self.view.sendSubview(toBack: backImageView)

        tab1.layer.cornerRadius = 10.0
        tab2.layer.cornerRadius = 10.0
        tab3.layer.cornerRadius = 10.0
        tab4.layer.cornerRadius = 10.0
        tab5.layer.cornerRadius = 10.0
        tab6.layer.cornerRadius = 10.0

        // Do any additional setup after loading the view.
        
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
