//
//  CallScreenViewController.swift
//  Test
//
//  Created by John Reyna on 12/2/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class CallScreenViewController: UIViewController {

    @IBOutlet weak var suggestedPhrasesScrollView: UIScrollView!
    
    @IBOutlet weak var endCallButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        
        suggestedPhrasesScrollView.contentSize.height = 350;
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.default
        
    }
    @IBAction func toPreviousPage(_ sender: Any) {
        self.navigationController!.popViewController(animated: true)
    }
}
