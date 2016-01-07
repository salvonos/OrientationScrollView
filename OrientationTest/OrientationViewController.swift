//
//  OrientationViewController.swift
//  OrientationTest
//
//  Created by LIVECT LAB on 06/01/2016.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class OrientationViewController: UIViewController {

    var autoRotate: Bool?
    var orientationMode: UIInterfaceOrientationMask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        autoRotate = false
        orientationMode = UIInterfaceOrientationMask.Portrait
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.autoRotate = true
        self.orientationMode = UIInterfaceOrientationMask.All
    }
    
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        autoRotate = false
        orientationMode = UIInterfaceOrientationMask.Portrait
    }
    
    
    
    override func shouldAutorotate() -> Bool {
        return autoRotate!
    }
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return orientationMode!
    }
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
