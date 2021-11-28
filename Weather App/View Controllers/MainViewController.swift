//
//  ViewController.swift
//  Weather App
//
//  Created by Станислав on 28.11.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var weatherIconImageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var tempLabel: UILabel!
    @IBOutlet var feelsLikeTempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButtonPressed(_ sender: Any) {
    }
    
}

