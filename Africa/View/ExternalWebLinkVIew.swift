//
//  ExternalWebLinkVIew.swift
//  Africa
//
//  Created by Manvendu Pathak on 07/05/21.
//

import SwiftUI

struct ExternalWebLinkVIew: View {
//MARK:- PROPERTIES
    
    let animal: Animal
//MARK:- BODY
    var body: some View {
        GroupBox{
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name , destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }//:  HSTACK
        }//: BOX
    }
}

//MARK:-  PREVIEW
struct ExternalWebLinkVIew_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkVIew(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
