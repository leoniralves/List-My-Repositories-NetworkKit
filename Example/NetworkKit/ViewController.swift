//
//  ViewController.swift
//  NetworkKit
//
//  Created by Leonir Deolindo on 04/07/2019.
//  Copyright (c) 2019 Leonir Deolindo. All rights reserved.
//

import UIKit
import NetworkKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NetworkKit.request(.repos, method: .GET) { [weak self] response in
            switch response {
            case .success( _):
                DispatchQueue.main.sync {
                    self?.lbResult.text = "Sucesso!"
                }
                print("Success")
            case .error( _):
                DispatchQueue.main.sync {
                    self?.lbResult.text = "Falha!"
                }
                print("Error")
            }
        }
    }
}

