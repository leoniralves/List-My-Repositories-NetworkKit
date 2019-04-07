//
//  NetworkManager.swift
//  NetworkKit
//
//  Created by Leonir Alves Deolindo on 07/04/19.
//

import Foundation

class NetworkManager {
    
    func request(_ endpoint: Endpoints, method: Methods, completionHandler: @escaping ((Response)->Void)) {
        guard let url = endpoint.url else {
            fatalError("URL Not Found!")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: urlRequest) { (data, _, error) in
            if let _error = error {
                completionHandler(Response.error(_error))
            }
            
            guard let _data = data else {
                completionHandler(Response.error(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data Not Found!"])))
                return
            }
            
            completionHandler(Response.success(_data))
        }
        
        task.resume()
    }
}
