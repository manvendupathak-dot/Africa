//
//  VideoModel.swift
//  Africa
//
//  Created by Manvendu Pathak on 08/05/21.
//

import Foundation

struct Video: Codable,Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computer Property
    var thumbnail: String{
        "video-\(id)"
    }
}
