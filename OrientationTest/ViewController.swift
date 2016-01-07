//
//  ViewController.swift
//  OrientationTest
//
//  Created by LIVECT LAB on 06/01/2016.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        scrollView.delegate = self
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let page1ViewController = storyboard.instantiateViewControllerWithIdentifier("page1_id") as! Page1ViewController;
        let page2ViewController = storyboard.instantiateViewControllerWithIdentifier("page2_id") as! Page2ViewController;
        
        scrollView!.contentSize = CGSizeMake(2*CGRectGetWidth(self.view.frame), CGRectGetHeight(view.frame));
        
        let viewControllers = [page1ViewController, page2ViewController]
        
        var idx:Int = 0;
        
        for viewController in viewControllers {
            // index is the index within the array
            // participant is the real object contained in the array
            addChildViewController(viewController);
            let originX:CGFloat = CGFloat(idx) * CGRectGetWidth(scrollView!.frame);
            viewController.view.frame = CGRectMake(originX, 0, viewController.view.frame.size.width, viewController.view.frame.size.height);
            scrollView!.addSubview(viewController.view)
            viewController.didMoveToParentViewController(self)
            idx++;
        }
        
    }

    
    @IBAction func cancelTomainViewController(segue:UIStoryboardSegue) {
        
    }
    
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

}

