//
//  ProfileViewController.swift
//  Test
//
//  Created by John Reyna on 12/2/16.
//  Copyright © 2016 John Reyna. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    // subclass specific stuff ---------------------------------------------------------
    @IBOutlet weak var enterAppButton: UIButton!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var splashMask: UIView!
    @IBOutlet weak var profPicImageView: UIImageView!
    @IBOutlet weak var findPeopleButton: UIButton!
    @IBOutlet weak var toMatchesButton: UIButton!
    @IBOutlet weak var interestScrollView: UIScrollView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        interestScrollView.contentSize.height = 700
        
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers
        for aViewController in viewControllers {
            if(aViewController is ProfileViewController){
                self.navigationController!.popToViewController(aViewController, animated: false);
            }
        }
        
        toMatchesButton.alpha = 0.0
        findPeopleButton.alpha = 0.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func vanishSplashScreen(_ sender: Any) {
        splashMask.alpha = 0.0;
        toMatchesButton.alpha = 1.0
        findPeopleButton.alpha = 1.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? PreviousConnectionsViewController {
            controller.transitioningDelegate = self
            controller.modalPresentationStyle = .custom
        }
    }
    
    //@IBAction func toMatchesButtonTapped(_ sender: Any) {
         //self.navigationController?.popViewController(animated: true)
    //}
    
    /*
     @IBAction func performSegue(_ sender: AnyObject) {
     self.performSegue(withIdentifier: "customSegue", sender: self)
     }
     */
    
    // can be inherited ----------------------------------------------------------------
    let transition = TransitionAnimationController()
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
}
