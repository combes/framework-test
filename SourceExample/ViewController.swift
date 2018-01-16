//
//  ViewController.swift
//  SourceExample
//
//  Created by Christopher Combes on 1/14/18.
//  Copyright © 2018 Christopher Combes. All rights reserved.
//

import UIKit
import SourceFramework

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func launchView(_ sender: Any) {
        
        let controller = SpecialViewController.specialViewController()
        let navigationController = UINavigationController(rootViewController: controller)
        self.present(navigationController, animated: true, completion: nil)
    }
}
