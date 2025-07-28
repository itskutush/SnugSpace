//
//  LisitingDetailView.swift
//  SnugSpace
//
//  Created by admin56 on 21/07/25.
//

import SwiftUI

struct LisitingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    var body: some View {
        ScrollView{
            ListingItemCarouselView()
                .frame(height: 320)
            VStack(alignment: .leading,spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading ,spacing: 8){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                    
                        Text("4.86")
                        
                        Text("  -  ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami,Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            //Entire villa by John Smith
            Divider()
           
            HStack{
                VStack(alignment: .leading,spacing: 8){
                    Text("Entire villa hosted by John Smith")
                        .fontWeight(.semibold)
                    HStack{
                        Text("4 guests")
                        Text("4 bedrooms")
                        Text("4 beds")
                        Text("3 baths")

                    }
                    .foregroundStyle(.gray)
                    
                        .font(.caption)
                }
                .frame(width: 250,alignment: .leading)
                Spacer()
                
                Image("profile-male")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width : 64 , height : 64)
                }
            .padding()
            .frame(maxWidth: .infinity,alignment: .leading)
            Divider()
          
            // SuperHost text
            VStack(alignment : .leading,spacing: 16){
                ForEach(0..<2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experienced, highly rated hosts who are committed to providing great stars for their guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
                
            }
            .padding()
            Divider()
            
            VStack(alignment: .leading,spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView (.horizontal,showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1..<5, id: \.self) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        
                        }

                    }
                    
                }
                
            }
            .padding()
            
            
        }
    }
}

#Preview {
    LisitingDetailView()
}
