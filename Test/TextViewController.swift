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
    
    @IBOutlet weak var mapPicture: UIImageView!
    @IBOutlet weak var textScrollView: UIScrollView!
    @IBOutlet weak var roundedMatchPic: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textScrollView.contentSize.height = 400;
        
        roundedMatchPic.layer.cornerRadius = roundedMatchPic.frame.size.width / 2
        roundedMatchPic.clipsToBounds = true
        
        mapPicture.layer.cornerRadius = mapPicture.frame.size.width / 16
        mapPicture.clipsToBounds = true
        
    }
}