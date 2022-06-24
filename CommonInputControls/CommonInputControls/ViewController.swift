//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Piotr Chlapinski on 22/06/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var testedButton: UIButton!
    var numberOfPressed = 0
    @IBOutlet var someSwitch: UISwitch!
    @IBOutlet var someSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testedButton.setTitle("Pressed \(numberOfPressed)", for: .normal)
        testedButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        numberOfPressed += 1
        testedButton.setTitle("Pressed \(numberOfPressed)", for: .normal)
        print("Button was tapped!")
        if someSwitch.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
        
        print("The slider is set to \(someSlider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
        
    }
    @IBAction func sliderValueChange(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        print("textChanged")
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
}

