//
//  ViewController.swift
//  AnnimationApp
//
//  Created by Max Franz Immelmann on 11/27/22.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarts = false
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse,
                                 .repeat]) { [unowned self] in
                                     
                                     if !animationStarts {
                                         coreAnimationView.frame.origin.x -= 40
                                         animationStarts.toggle()
                                     }
                                     
                                 }
    }
    
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "wobble"
        springAnimationView.curve = "easyInOutSine"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 1
        springAnimationView.animate()
        
        sender.animation = "swing"
        sender.animate()
    }
    
}

