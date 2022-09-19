//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Ксн Тлскн on 17.09.2022.
//

import UIKit

enum TrafficLights {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    
    @IBOutlet var trafficLightButton: UIButton!
    
    private var trafficLight = TrafficLights.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redTrafficLight.alpha = lightIsOff
        yellowTrafficLight.alpha = lightIsOff
        greenTrafficLight.alpha = lightIsOff
        
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.width / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.width / 2
        
        trafficLightButton.layer.cornerRadius = 15
    }
    
    override func viewWillLayoutSubviews() {
        redTrafficLight.layer.cornerRadius = redTrafficLight.frame.width / 2
        yellowTrafficLight.layer.cornerRadius = yellowTrafficLight.frame.width / 2
        greenTrafficLight.layer.cornerRadius = greenTrafficLight.frame.width / 2
    }
    
    @IBAction func trafficLightButtonDidTapped() {
            trafficLightButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
        case .red:
            redTrafficLight.alpha = lightIsOn
            greenTrafficLight.alpha = lightIsOff
            trafficLight = .yellow
        case .yellow:
            redTrafficLight.alpha = lightIsOff
            yellowTrafficLight.alpha = lightIsOn
            trafficLight = .green
        case .green:
            yellowTrafficLight.alpha = lightIsOff
            greenTrafficLight.alpha = lightIsOn
            trafficLight = .red
        }
    }
}



