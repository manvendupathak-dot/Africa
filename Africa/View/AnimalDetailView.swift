//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Manvendu Pathak on 06/05/21.
//

import SwiftUI

struct AnimalDetailView: View {
//MARK:- PROPERTIES
    
    let animal: Animal
//MARK:- BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center,spacing:20){
               //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
               //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height:6)
                            .offset(y: 24)
                    )
               //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
               //GALLERY
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingtext: "Wilderness in Pictures")
                    
                    insetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                 
                
               //FACTS
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingtext: "Did you know?")
                   
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
               //DESCRIPTION
                
                Group{
                    HeadingView(headingImage: "info.circle", headingtext: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                        .font(.title3)
                        .foregroundColor(.accentColor)
                }
                .padding(.horizontal)
                
               //MAP
                Group{
                    HeadingView(headingImage: "map", headingtext: "National Parks")
                }
                .padding(.horizontal)
                
                InsetMapView()
               //LINK
                Group{
                    HeadingView(headingImage: "books.vertical", headingtext: "Learn more")
                    
                    ExternalWebLinkVIew(animal: animal)
                }//: GROUP
                .padding(.horizontal)
                
                
            }//: VSTACK
            .navigationBarTitle("learn about \(animal.name)",displayMode: .inline)
        }//:SCROLL
 
    }
}

//MARK:- PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 11 Pro")
    }
}
