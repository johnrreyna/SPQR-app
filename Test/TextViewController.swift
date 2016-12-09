//
//  TextViewController.swift
//  Test
//
//  Created by John Reyna on 12/6/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class TextViewController: UIViewController {
    
    @IBOutlet weak var textScrollView: UIScrollView!
    @IBOutlet weak var roundedMatchPic: UIImageView!
    @IBOutlet weak var toProfileButton: UIButton!
    
    @IBOutlet weak var typingField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textScrollView.contentSize.height = 1000;
        
        roundedMatchPic.layer.cornerRadius = roundedMatchPic.frame.size.width / 2
        roundedMatchPic.clipsToBounds = true
        
        
    }
    
    @IBAction func revealKeyboard(_ sender: UITextField) {
        
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
