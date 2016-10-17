//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bonJovi: UIImageView!
    
    var buttonTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        switch buttonTapped {
        case false:
        increaseSize()
            print(buttonTapped)
            buttonTapped = true
        case true:
            print(buttonTapped)
            returnToOriginalSize()
            buttonTapped = false
        }

    }
    

    func increaseSize() {
        
     UIView.animateKeyframes(withDuration: 0.7, delay: 0.0, options: .calculationModeLinear, animations: {
        
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3, animations: {
            self.bonJovi.bounds.size.height = self.view.frame.size.height + 200
        })
        
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
            self.bonJovi.bounds.size.height = self.view.frame.size.height
        })
        
        UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.0, animations: {
            self.bonJovi.bounds.size.height = self.view.frame.size.height
        })
        
        self.view.layoutIfNeeded()
        
        }, completion: nil)
        
        
        
    }
    
    func returnToOriginalSize() {
        
        UIView.animateKeyframes(withDuration: 0.8, delay: 0.0, options: .calculationModeLinear, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.3, animations: {
                self.bonJovi.bounds.size.height = self.bonJovi.bounds.size.height/3 - 100
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.2, animations: {
                self.bonJovi.bounds.size.height += 150
            })
            
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.0, animations: {
                self.bonJovi.bounds.size.height = self.bonJovi.bounds.size.height
            })
            
            self.view.layoutIfNeeded()
            
            }, completion: nil)
        
    }
    
    
    
}

