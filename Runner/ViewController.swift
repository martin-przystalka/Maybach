//
//  ViewController.swift
//  Runner
//
//  Created by Martin Przystalka on 21/09/2017.
//  Copyright © 2017 mh. All rights reserved.
//

import UIKit
import Maybach

class ViewController: UIViewController {

    @IBOutlet weak var customNavigationBar: CustomNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        log(LogType.info, self, #function, #line)
        
        customNavigationBar.onLeftBarButtonClick = {
            log(LogType.error, self, #function, #line)
        }
        
        customNavigationBar.onRightBarButtonClick = {
            log(LogType.error, self, #function, #line)
        }
    }
}
