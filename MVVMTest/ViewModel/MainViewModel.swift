//
//  MainViewModel.swift
//  MVVMTest
//
//  Created by Stanislav on 09.02.2021.
//

import Foundation

class MainViewModel {
    weak var service: NetworkService?
    private var weatherModel: WeatherModel?
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func updateWeather(completion: @escaping () -> Void) {
        service?.fetchWeather { weather in
            self.weatherModel = weather
            completion()
        }
    }
    
    func getWeather() -> WeatherModel? {
        return weatherModel
    }
}
