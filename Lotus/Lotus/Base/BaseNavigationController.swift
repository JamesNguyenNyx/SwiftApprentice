//
//  BaseNavigationController.swift
//  Lotus
//
//  Created by James Nguyen on 2017/08/15.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return topViewController!.supportedInterfaceOrientations
    }
}
