//
//  ListingItemCarouselView.swift
//  SnugSpace
//
//  Created by admin56 on 21/07/25.
//

import SwiftUI

struct ListingItemCarouselView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self){
                image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingItemCarouselView()
}
