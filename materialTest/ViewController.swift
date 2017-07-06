//
//  ViewController.swift
//  materialTest
//
//  Created by Victor Carmouze on 06/07/2017.
//  Copyright © 2017 Victor Carmouze. All rights reserved.
//

import UIKit
import Material

class UIViewController2: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let item = UIView()

        pageTabBarItem.addSubview(item)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pageViewController = PageTabBarController(rootViewController: UIViewController2())
        view.addSubview(pageViewController.view)
    }
}

