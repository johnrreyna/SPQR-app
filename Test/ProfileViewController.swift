//
//  ProfileViewController.swift
//  Test
//
//  Created by John Reyna on 12/2/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profPicImageView: UIImageView!
    @IBOutlet weak var toMatchesButton: UIButton!
    @IBOutlet weak var interestScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interestScrollView.contentSize.height = 250;
    }
    
    @IBAction func performSegue(sender: AnyObject) {
        self.performSegueWithIdentifier("customSegue", sender: self)
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        
        /*
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage();
        self.navigationController?.navigationBar.translucent = true
        */
    }
}