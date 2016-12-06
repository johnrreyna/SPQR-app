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

    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        
        /*
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController?.navigationBar.shadowImage = UIImage();
        self.navigationController?.navigationBar.translucent = true
        */
    }
}