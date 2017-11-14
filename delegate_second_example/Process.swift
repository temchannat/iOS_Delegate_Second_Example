//
//  Process.swift
//  delegate_second_example
//
//  Created by Channat Tem on 11/14/17.
//  Copyright © 2017 Channat Tem. All rights reserved.
//

import Foundation

class Process {
    var delegate: ProcessDelegate?
    
    func startProcess() {
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.finishedProcess), userInfo: nil, repeats: false)
    }
    
    @objc func finishedProcess() {
        delegate?.didFinishTask(message: "Process completed")
    }
}

protocol ProcessDelegate {
    func didFinishTask(message: String)
}











