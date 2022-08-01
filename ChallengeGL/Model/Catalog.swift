//
//  ChallengeGLModel.swift
//  ChallengeGL
//
//  Created by Estefania Sassone on 07/07/2022.
//

import Foundation

struct Catalog: Codable {
    let title, catalogoDescription: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case title
        case catalogoDescription = "description"
        case image
    }
}
