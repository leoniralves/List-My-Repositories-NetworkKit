//
//  Endpoints.swift
//  NetworkKit
//
//  Created by Leonir Alves Deolindo on 07/04/19.
//

import Foundation

public enum Endpoints {
    case repos
    
    public var url: URL? {
        switch self {
        case .repos:
            return URL(string: "https://api.github.com/users/leoniralves/repos")
        }
    }
}
