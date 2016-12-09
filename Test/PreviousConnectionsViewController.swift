//
//  PreviousConnectionsViewController.swift
//  Test
//
//  Created by John Reyna on 12/2/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class PreviousConnectionsViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    @IBOutlet weak var toProfileButton: UIButton!
    
    @IBOutlet weak var toMatchProfileButton: UIButton!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? MatchProfileViewController {
            controller.transitioningDelegate = self
            controller.modalPresentationStyle = .custom
        }
    }
    
    @IBAction func toMatchProfileButtonTapped(_ sender: Any) {
        
    }
    
    // can be inherited ----------------------------------------------------------------
    let transition = TransitionAnimationController()
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
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
