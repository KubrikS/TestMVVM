//
//  NetworkService.swift
//  MVVMTest
//
//  Created by Stanislav on 09.02.2021.
//

import Foundation

class NetworkService {
    func fetchWeather(completion: @escaping (WeatherModel) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            let weather = WeatherModel(cityname: "Moscow", temp: -12)
            completion(weather)
        })
    }
}
