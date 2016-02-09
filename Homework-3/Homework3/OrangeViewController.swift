//
//  OrangeViewController.swift
//  Homework3
//
//  Created by Jason on 1/25/15.
//  Copyright (c) 2015 CCSF. All rights reserved.
//

import UIKit

class OrangeViewController : UIViewController {
    
    var count = 0
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear (animated)
        
        print("Orange. viewWillAppear.")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear (animated)
        
        print("Orange. viewDidAppear.")
        count++
        print("the orange viewDidAppear count is \(count)")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear (animated)
        
        print("Orange. viewWillDisappear.")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear (animated)
        
        print("Orange. viewDidDisappear.")
    }
    
}
