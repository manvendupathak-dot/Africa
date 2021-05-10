//
//  AnimalGridItemVIew.swift
//  Africa
//
//  Created by Manvendu Pathak on 10/05/21.
//

import SwiftUI

struct AnimalGridItemVIew: View {
//MARK:- PROPERTIES
    
    let animals: Animal
//MARK:- BODY
    var body: some View {
        Image(animals.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK:- PREVIEW
struct AnimalGridItemVIew_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        AnimalGridItemVIew(animals: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
