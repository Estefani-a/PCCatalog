//
//  APIManager.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import Foundation
import Alamofire
import PromiseKit

class APICatalog {
    
    static func loadCatalogs() -> Promise<[Catalog]>{
        return Promise{ seal in
            AF.request("http://private-f0eea-mobilegllatam.apiary-mock.com/list").responseDecodable(of: [Catalog].self){ response in
                if let catalogs = response.value{
                    seal.fulfill(catalogs)
                    return
                }
                seal.reject(APIError.ServerError)
            }
        }
    }
}

extension UIImageView {
    
    func loadFrom(url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        DispatchQueue.global().async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                    DispatchQueue.main.async {
                        self?.image = loadedImage
                    }
                }
            }
        }
    }
}
