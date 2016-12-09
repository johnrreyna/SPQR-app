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
        
        textScrollView.contentSize.height = 300;
        
        roundedMatchPic.layer.cornerRadius = roundedMatchPic.frame.size.width / 2
        roundedMatchPic.clipsToBounds = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        [typingField .becomeFirstResponder()]
    }
    
    @IBAction func revealKeyboard(_ sender: UITextField) {
        
    }
    
    @IBAction func toPreviousPage(_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
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
