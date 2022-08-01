//
//  APIClient.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import Foundation
import Alamofire
import PromiseKit

class APIClient { //Completar
    
    var baseURL: URL?
    
    static let shared = { APIClient(baseUrl: APIManager.shared.baseURL) }()
    
    required init(baseUrl: String){
        self.baseURL = URL(string: baseUrl)
    }
    
}
