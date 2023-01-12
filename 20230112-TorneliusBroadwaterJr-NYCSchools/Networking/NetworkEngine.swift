//
//  NetworkEngine.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation

class NetworkEngine {
    
    class func request<T: Codable>(to endpoint: Endpoint, completion: @escaping (Result<T, Error>) -> Void) {
        
        var components = URLComponents()
        components.scheme = endpoint.scheme
        components.host = endpoint.host
        components.path = endpoint.path
        components.queryItems = endpoint.queryItems
        
        guard let url = components.url else {
            completion(.failure(NetworkError.urlError))
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.method

        let session = URLSession(configuration: .default)
        
        let dataTask = session.dataTask(with: urlRequest) { data, response, error in
            
            guard error == nil else {
                if let error = error {
                    completion(.failure(error))
                }
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                if let error = error {
                    completion(.failure(error))
                }
                return
            }
            
            guard let data = data else {
                if let error = error {
                    completion(.failure(error))
                }
                return
            }
            
            do {
                let response = try JSONDecoder().decode(T.self, from: data)
                completion(.success(response))
            } catch {
                completion(.failure(error))
            }
            
        }
        dataTask.resume()
    }
}
