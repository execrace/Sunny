//
//  CurrentWeatherData.swift
//  Sunny
//
//  Created by Sergey Shirmanov on 01.12.2021.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let  temp: Double
    let feelsLlike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLlike = "feels_like"
    }
}

struct Weather: Codable {
    let id: Int
}
