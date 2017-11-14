//
//  ViewController.swift
//  delegate_second_example
//
//  Created by Channat Tem on 11/14/17.
//  Copyright © 2017 Channat Tem. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ProcessDelegate {

    
    @IBOutlet weak var taskLabel: UILabel!
    
    var process: Process?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.taskLabel.text = "Processing..."
        process = Process()
        process?.delegate = self
        process?.startProcess()
    }

    func didFinishTask(message: String) {
        self.taskLabel.text = message
    }

}










