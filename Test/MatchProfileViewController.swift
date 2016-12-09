//
//  MatchProfileViewController.swift
//  Test
//
//  Created by John Reyna on 12/2/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class MatchProfileViewController: UIViewController {

    @IBOutlet weak var toProfileButton: UIButton!
    @IBOutlet weak var matchProfileScrollView: UIScrollView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        matchProfileScrollView.contentSize.height = 700
    }
    
    @IBAction func toPreviousPage(_ sender: Any) {
        self.navigationController!.popViewController(animated: true);
    }
    
    @IBAction func toProfile(_ sender: Any) {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers
        for aViewController in viewControllers {
            if(aViewController is ProfileViewController){
                self.navigationController!.popToViewController(aViewController, animated: true);
            }
        }
    }
}
