//
//  ViewController.swift
//  Runner
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
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
