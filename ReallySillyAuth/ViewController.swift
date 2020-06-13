//
//  ViewController.swift
//  ReallySillyAuth
//
//  Created by Alpha Chen on 6/12/20.
//  Copyright © 2020 Alpha Chen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindFromSettings(_ unwindSegue: UIStoryboardSegue) {
        dismiss(animated: true)
    }

}

