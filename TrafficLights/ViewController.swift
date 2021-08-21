//
//  ViewController.swift
//  TrafficLights
//
//  Created by Евгений on 21.08.2021.
//

import UIKit

enum colorLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    var currentLight = colorLight.red
    let lightOff: CGFloat = 0.3
    let lightOn: CGFloat = 1.0
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        
        redLight.alpha = lightOff
        yellowLight.alpha = lightOff
        greenLight.alpha = lightOff
                
        redLight.layer.cornerRadius = redLight.frame.height / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.height / 2
        greenLight.layer.cornerRadius = greenLight.frame.height / 2
    }
    
    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "Start!" {
            startButton.setTitle("Next!", for: .normal)
        }
        switch currentLight {
        case .red:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            currentLight = .red
        }
    }
    
}

