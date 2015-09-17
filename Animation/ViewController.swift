//
//  ViewController.swift
//  Animation
//
//  Created by Rosario Tarabocchia on 9/16/15.
//  Copyright (c) 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var counter = 0
    
    var timer = NSTimer()
    
    var isAnimating = true


    @IBOutlet var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
        }
        
        else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
        

        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
        
        
    }
    
    func doAnimation() {
        
        
        
        if counter == 4 {
            
            counter = 1
        }
            
        else {
            
            counter++ }
        
        
        
        alienImage.image = UIImage(named: "frame\(counter).png")
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            
            })
    }


}

