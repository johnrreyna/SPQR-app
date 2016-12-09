//
//  TransitionAnimationController.swift
//  Test
//
//  Created by John Reyna on 12/9/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class TransitionAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    var sourceViewStartOrigin: CGPoint?
    var sourceViewEndOrigin: CGPoint?
    var destinationViewStartOrigin: CGPoint?
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.2
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let sourceView = transitionContext.view(forKey: UITransitionContextViewKey.from),
            let destinationView = transitionContext.view(forKey: UITransitionContextViewKey.to) else {
                return
        }
        let containerView = transitionContext.containerView
        
        // Define beginning and ending origin points for the two frames
        sourceViewStartOrigin = sourceView.frame.origin
        destinationViewStartOrigin = CGPoint(x: ((sourceViewStartOrigin?.x)! + sourceView.frame.width), y: (sourceViewStartOrigin?.y)! )
        sourceViewEndOrigin = CGPoint(x: ((sourceViewStartOrigin?.x)! - sourceView.frame.width), y: (sourceViewStartOrigin?.y)! )
        
        destinationView.frame.origin = destinationViewStartOrigin!
        
        containerView.addSubview(sourceView)
        containerView.addSubview(destinationView)
        
        // Animation beginning
        UIView.animate(withDuration: 2.2,
        animations: {
            destinationView.frame.origin = self.sourceViewStartOrigin!
            sourceView.frame.origin = self.sourceViewEndOrigin!
        },
        completion: { (_) in
            transitionContext.completeTransition(true);
        })
        // Animation end
        
    }
}
