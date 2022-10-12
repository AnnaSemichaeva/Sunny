//
//  NetworkWeatherManager.swift
//  Sunny
//
//  Created by macuser on 10/12/22.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//

import Foundation

struct NetworkWeatherManager {
    
    func fetchCurrentWeather(forCity city: String) {
        
        let urlString = "http://api.weatherstack.com/current?access_key=\(apiKey)&query=\(city)"
        
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        task.resume()
    }
}
