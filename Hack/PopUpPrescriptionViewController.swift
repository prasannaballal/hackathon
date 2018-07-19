//
//  PopUpPrescriptionViewController.swift
//  Hack
//
//  Created by Sreeja Chowdhury on 7/20/18.
//  Copyright © 2018 Sreeja Chowdhury. All rights reserved.
//

import UIKit

class PopUpPrescriptionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func closePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
        dismiss(animated: true)
    }
   
    @IBAction func closeIt(_ sender: Any) {
        self.view.removeFromSuperview()
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
