//
//  NavigationControllerDelegate.swift
//  Test
//
//  Created by John Reyna on 12/9/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import UIKit

class NavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        
        return TransitionAnimationController()
    }
}
