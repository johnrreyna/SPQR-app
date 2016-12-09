//
//  MapViewController.swift
//  Test
//
//  Created by John Reyna on 12/9/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var toProfileButton: UIButton!
    
    
    @IBAction func toPreviousPage(_ sender: Any) {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers
        for aViewController in viewControllers {
            if(aViewController is ProfileViewController){
                self.navigationController!.popToViewController(aViewController, animated: false);
            }
        }
    }
    
    @IBAction func manageViewControllerStack(_ sender: Any) {
        

    }
}
