//
//  ListingItemView.swift
//  SnugSpace
//
//  Created by admin56 on 19/07/25.
//

import SwiftUI

struct ListingItemView: View {
     
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            //image
            TabView{
                ForEach(images, id: \.self){
                    image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            //detail of the image
            HStack(alignment: .top){
                VStack(alignment: .leading){
                    Text("Miami,Florida")
                        .fontWeight(.semibold)
                    Text("10 mil away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("Night")
                    }
                }
                
                Spacer()
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
            }
            .font(.caption)
            .foregroundStyle(.black)
            
        }
        
    }
}

#Preview {
     ListingItemView()
}
