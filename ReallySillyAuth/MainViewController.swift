//
//  ViewController.swift
//  ReallySillyAuth
//
//  Created by Alpha Chen on 6/12/20.
//  Copyright © 2020 Alpha Chen. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var codeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let descriptor = UIFontDescriptor
            .preferredFontDescriptor(withTextStyle: .largeTitle)
            .withDesign(.monospaced)!
        codeLabel.font = UIFont(descriptor: descriptor, size: 0)
    }

    @IBAction func unwindFromSettings(_ unwindSegue: UIStoryboardSegue) {}

}

class SettingsViewController: UITableViewController {

    @IBOutlet var textFields: [UITextField]!
    @IBOutlet var buttons: [UIButton]!

    @IBAction func toggleShowText(_ sender: UIButton) {
        guard let index = buttons.firstIndex(of: sender) else {
            return
        }

        textFields[index].isSecureTextEntry = !textFields[index].isSecureTextEntry
        let systemName = textFields[index].isSecureTextEntry ? "eye" : "eye.slash"
        sender.setImage(UIImage(systemName: systemName), for: .normal)
    }

}
