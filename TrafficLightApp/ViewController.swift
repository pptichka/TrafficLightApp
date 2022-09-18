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
    }
}

