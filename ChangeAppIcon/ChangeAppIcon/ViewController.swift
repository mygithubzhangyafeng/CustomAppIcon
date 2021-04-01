//
//  ViewController.swift
//  ChangeAppIcon
//
//  Created by yafengzhang on 2021/4/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func defaultAppIcon(_ sender: Any) {
        AppIconManager.shared.setIcon(.classic)
    }
    

    @IBAction func customAppIcon1(_ sender: Any) {
        AppIconManager.shared.setIcon(.cookie)
    }
    
    
    @IBAction func customAppIcon2(_ sender: Any) {
        AppIconManager.shared.setIcon(.donut)
    }
}

