//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Ксн Тлскн on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redTrafficLight: UIView!
    @IBOutlet var yellowTrafficLight: UIView!
    @IBOutlet var greenTrafficLight: UIView!
    @IBOutlet var trafficLightButton: UIButton!
    
    var trafficLight = TrafficLights.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redTrafficLight.alpha = 0.3
        yellowTrafficLight.alpha = 0.3
        greenTrafficLight.alpha = 0.3
        
        redTrafficLight.layer.cornerRadius = 75
        yellowTrafficLight.layer.cornerRadius = 75
        greenTrafficLight.layer.cornerRadius = 75
        trafficLightButton.layer.cornerRadius = 15
    }
    
    @IBAction func trafficLightButtonDidTapped() {
        trafficLightButton.setTitle("NEXT", for: .normal)
        
        switch trafficLight {
        case .red:
            redTrafficLight.alpha = 1
            yellowTrafficLight.alpha = 0.3
            greenTrafficLight.alpha = 0.3
        case .yellow:
            redTrafficLight.alpha = 0.3
            yellowTrafficLight.alpha = 1
            greenTrafficLight.alpha = 0.3
        case .green:
            redTrafficLight.alpha = 0.3
            yellowTrafficLight.alpha = 0.3
            greenTrafficLight.alpha = 1
        }
        
        trafficLight = TrafficLights.yellow
        trafficLight = TrafficLights.green
    }
}

enum TrafficLights {
    case red
    case yellow
    case green
}

