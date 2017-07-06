//
//  ViewController.swift
//  materialTest
//
//  Created by Victor Carmouze on 06/07/2017.
//  Copyright © 2017 Victor Carmouze. All rights reserved.
//

import UIKit
import Material

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item = UIView()
        
        pageTabBarItem.addSubviewAndSetupMargins(subview: item)
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pageViewController = PageTabBarController(viewControllers: [ViewController2(), ViewController2()])
        view.addSubview(pageViewController.view)
        addChildViewController(pageViewController)
        pageViewController.didMove(toParentViewController: self)
    }
}

public extension UIView {
    
    func addSubviewAndSetupMargins(subview: UIView, margins: UIEdgeInsets = UIEdgeInsets.zero) {
        addSubview(subview)
        
        subview.translatesAutoresizingMaskIntoConstraints = false
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-(\(margins.left))-[view]-(\(margins.right))-|",
            metrics: nil,
            views: ["view": subview]))
        addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-(\(margins.top))-[view]-(\(margins.bottom))-|",
            metrics: nil,
            views: ["view": subview]))
        
    }
}
