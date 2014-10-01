//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Neha Kothari on 9/26/14.
//  Copyright (c) 2014 Cactus Garden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterMensUSSizeTextField: UITextField!
    
    @IBOutlet weak var convertedMensShoeSizeLabel: UILabel!
    
    @IBOutlet weak var enterWomensUSSizeTextField: UITextField!
    
    @IBOutlet weak var convertedWomensShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        enterMensUSSizeTextField.resignFirstResponder()
        convertedMensShoeSizeLabel.hidden = false
        let mensUSShoeSize = enterMensUSSizeTextField.text.toInt()!
        var convertedMensShoeSize = mensUSShoeSize + 30
        let convertedMensShoeSizeString = "\(convertedMensShoeSize)"
        convertedMensShoeSizeLabel.text = "Equivalent European Men's Shoe Size Is \(convertedMensShoeSizeString)"
    }
    @IBAction func convertWomensButtonPressed(sender: UIButton) {
        enterWomensUSSizeTextField.resignFirstResponder()
        convertedWomensShoeSizeLabel.hidden = false
        let convertedWomensShoesizeDouble = Double((enterWomensUSSizeTextField.text as NSString).doubleValue) + 30.5
        convertedWomensShoeSizeLabel.text = "Equivalent European Women's Shoe Size is \(convertedWomensShoesizeDouble)"
    }
}

