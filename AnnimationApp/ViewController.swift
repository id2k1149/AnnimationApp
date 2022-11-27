//
//  ViewController.swift
//  AnnimationApp
//
//  Created by Max Franz Immelmann on 11/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var coreAnimationView: UIView!
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse,
                                 .repeat]) { [unowned self] in
                                     coreAnimationView.frame.origin.x -= 40
                                 }
    }
}

