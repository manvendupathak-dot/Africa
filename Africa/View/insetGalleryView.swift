//
//  insetGalleryView.swift
//  Africa
//
//  Created by Manvendu Pathak on 06/05/21.
//

import SwiftUI

struct insetGalleryView: View {
//MARK: - PROPERTIES
    
    let animal: Animal
//MARK:- BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
        HStack(alignment: .center,spacing: 15) {
            ForEach(animal.gallery, id: \.self) { item in
                Image(item)
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .cornerRadius(12)
            }
        }//: HSTACK
      }//: SCROLL
    }
}

//MARK: - PREVIEW
struct insetGalleryView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        insetGalleryView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
