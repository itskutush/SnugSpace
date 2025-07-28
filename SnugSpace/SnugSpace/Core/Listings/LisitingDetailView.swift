//
//  LisitingDetailView.swift
//  SnugSpace
//
//  Created by admin56 on 21/07/25.
//

import SwiftUI
import MapKit
struct LisitingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingItemCarouselView()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                }
                label : {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width : 32 , height : 32)
                        }
                        .padding(32)
                }
            }
            
                
           
            
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
            //Lisitng amenties
            VStack(alignment: .leading,spacing : 16){
                Text("What this place offers")
                    .font(.headline)
                    ForEach (1..<5,id: \.self){ feature in
                        HStack{
                            Image(systemName: "wifi")
                                .frame(width: 32)
                            Text("Wifi")
                                .font(.footnote)
                            Spacer()
                        
                    }
                }
            }
            .padding()
            
            Divider()
        
            //Map
            VStack(alignment: .leading,spacing : 16){
                Text("Where you'll live")
                    .font(.headline)
                
               Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment : .leading){
                        Text("$500")
                            .font(.headline)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15-20")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140 , height : 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                }
                .padding(.horizontal,32)
            }
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    LisitingDetailView()
}
