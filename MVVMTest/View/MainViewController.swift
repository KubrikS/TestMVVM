//
//  ViewController.swift
//  MVVMTest
//
//  Created by Stanislav on 09.02.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: MainViewModel? {
        didSet {
            viewModel?.updateWeather {
                self.setValuesForLabels()
                self.activityIndicator.stopAnimating()
            }
        }
    }
    
    @IBOutlet var cityLabel: UILabel!
    
    @IBOutlet var tempLabel: UILabel!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setValuesForLabels() {
        guard let model = self.viewModel?.getWeather() else { return }
        self.cityLabel.text = model.cityname
        self.tempLabel.text = "\(model.temp) C°"
    }
}

