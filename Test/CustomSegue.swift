//
//  CustomSegue.swift
//
//
//  
//
//

import UIKit

class CustomSegue: UIStoryboardSegue
{
    
    override func perform() {
        
        //set the ViewControllers for the animation
        
        let sourceView = self.source.view as UIView!
        let destinationView = self.destination.view as UIView!
        
        let window = UIApplication.shared.delegate?.window!
        
        //set the destination View origin
        destinationView?.frame.origin = CGPoint(x: (sourceView?.frame.width)!, y: (sourceView?.frame.origin.y)! )
        
        // the Views must be in the Window hierarchy, so insert as a subview the destionation above the source
        window?.insertSubview(destinationView!, belowSubview: sourceView!)
        
        //create UIAnimation- change the views's position when present it
        UIView.animate(withDuration: 0.2,
                animations: {
                    destinationView?.frame.origin = CGPoint(x: 0, y: (sourceView?.frame.origin.y)!)
                    sourceView?.frame.origin = CGPoint(x: -1 * (sourceView?.frame.width)! , y: (sourceView?.frame.origin.y)!)
                },
                completion: { (value: Bool) in
                    self.source.navigationController?.pushViewController(self.destination, animated: false)
                    destinationView?.didMoveToSuperview()
            
                })
    }
    
    /*
    override func perform()
    {
        let sourceVC = self.source
        let destinationVC = self.destination
        
        sourceVC.view.addSubview(destinationVC.view)
        
        destinationVC.view.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: UIViewAnimationOptions(), animations: { () -> Void in
            
            destinationVC.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            
            }) { (finished) -> Void in
                
                destinationVC.view.removeFromSuperview()
                
                let time = DispatchTime.now() + Double(Int64(0.001 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
                
                DispatchQueue.main.asyncAfter(deadline: time) {
                    
                    sourceVC.present(destinationVC, animated: false, completion: nil)
                    
                }
        }
    }
         */
}
