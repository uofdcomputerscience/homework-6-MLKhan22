//
//  ViewController.swift
//  Homework6
//
//  Created by Minh Ly on 10/29/19.
//  Copyright © 2019 Minh Ly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        nextPage()
    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        selectionSwitch.isOn.toggle()
        nextPage()
    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        selectionButton.isSelected.toggle()
        nextPage()
    }
    
    func nextPage() {
        if(segmentedController.selectedSegmentIndex == 1 && selectionSwitch.isOn && selectionButton.isSelected){
            continueButton.isEnabled = true
        }
        else{
            continueButton.isEnabled = false
        }
    }
    
}

