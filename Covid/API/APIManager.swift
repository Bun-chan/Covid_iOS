//
//  APIManager.swift
//  Covid
//
//  Created by Bun on 2022/12/10.
//

//API reference: https://apidocs.covidactnow.org/api/

import Foundation
class APIManager {
    static let apiKey = "492e432eabe64982aeb015647bd0ce4c"
    
    
    static func getData() {
        let urlsession = URLSession(configuration: .default)
        let url = "https://api.covidactnow.org/v2/state/NY.json?apiKey=" + apiKey
        let urlRequest = URLRequest(url: URL(string: url)!)
        let task = urlsession.dataTask(with: urlRequest, completionHandler: { data, response, error in
            
            if let json = try? JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                for item in json {
                    print(item)
                }
            }
        })
        task.resume()
    }
}
