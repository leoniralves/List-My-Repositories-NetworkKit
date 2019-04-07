//
//  NetworkKit.swift
//  NetworkKit
//
//  Created by Leonir Alves Deolindo on 07/04/19.
//

import Foundation

public class NetworkKit {
    
    public class func request(_ endpoint: Endpoints, method: Methods, completionHandler: @escaping ((Response)->Void)) {
        let networkManager = NetworkManager()
        networkManager.request(endpoint, method: method, completionHandler: completionHandler)
    }
}
