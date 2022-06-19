//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Piotr Chlapinski on 19/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = "This app rocks!"
    }
    
}

