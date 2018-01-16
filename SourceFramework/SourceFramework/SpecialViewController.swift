//
//  SpecialViewController.swift
//  SourceFramework
//
//  Created by Christopher Combes on 1/14/18.
//  Copyright © 2018 Christopher Combes. All rights reserved.
//

import UIKit
import Kingfisher

public class SpecialViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    public static func specialViewController() -> SpecialViewController {
        let frameworkBundle = Bundle(for: type(of: SpecialViewController()))
        let storyboard = UIStoryboard(name: "Storyboard", bundle: frameworkBundle)
        let controller = storyboard.instantiateViewController(withIdentifier: "storyboard") as! SpecialViewController
        
        return controller
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Honeycrisp-Apple.jpg/1200px-Honeycrisp-Apple.jpg")!
        imageView.kf.setImage(with: url)
    }
}
