//
//  NetworkManager.swift
//  FavoriteDog
//
//  Created by 이지수 on 2023/08/11.
//

import Foundation

class NetworkManager {
    class func getImages(resource: String) {
        //
        let defaultSession = URLSession(configuration: .default)
        
        guard let url = URL(string: "\(resource)") else {
            print(#fileID, #function, #line, "error - URL is nil")
            return
        }
        
        //
        let request = URLRequest(url: url)
        
        //
        let dataTask = defaultSession.dataTask(with: request) {(data: Data?, response: URLResponse?, error: Error?) in
            
            guard error == nil else {
                print(#fileID, #function, #line, "error - \(error)")
                return
            }
            
            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                print(#fileID, #function, #line, "error - data or response")
                return
            }
            
            
            let decoder = JSONDecoder()
            if let jsonObject = try? decoder.decode(imageJsonObject.self, from: data) {
                print(jsonObject.url)
            }
        }
        
        //
        dataTask.resume()
    }
}
