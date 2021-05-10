//
//  AnimalModel.swift
//  Africa
//
//  Created by Manvendu Pathak on 06/05/21.
//

import Foundation

struct Animal: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
