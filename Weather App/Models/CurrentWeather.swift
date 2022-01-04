//
//  CurrentWeather.swift
//  Weather App
//
//  Created by Станислав on 04.01.2022.
//

struct CurrentWeather {
    let cityName: String
    
    let temperature: Double
    var temperatureString: String {
        "\(temperature.rounded())"
    }
    
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        "\(feelsLikeTemperature.rounded())"
    }
    
    let conditionCode: Int
    
    init?(currentWeatherData: CurrentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feelsLike
        conditionCode = currentWeatherData.weather.first!.id 
    }
}
