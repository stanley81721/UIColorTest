//
//  ViewController.swift
//  UIColorTest
//
//  Created by Stanley on 2017/8/3.
//  Copyright © 2017年 Stanley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redButton: UISwitch!
    @IBOutlet weak var greenButton: UISwitch!
    @IBOutlet weak var blueButton: UISwitch!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func changeColor(_ sender: Any) {
        if !redButton.isOn {
            redSlider.value = 0
            redButton.isEnabled = false
        } else if !greenButton.isOn {
            greenSlider.value = 0
            greenButton.isEnabled = false
        } else if !blueButton.isOn {
            blueSlider.value = 0
            blueButton.isEnabled = false
        }
         colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func resetColor(_ sender: Any) {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        updateColorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColorView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }


}

