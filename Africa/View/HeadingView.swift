//
//  HeadingView.swift
//  Africa
//
//  Created by Manvendu Pathak on 06/05/21.
//

import SwiftUI

struct HeadingView: View {
//MARK: - PROPERTIES
    
    var headingImage: String
    var headingtext: String
//MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            
            Text(headingtext)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

//MARK: - PREVIEW
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingtext: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
