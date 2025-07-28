//
//  ExploreView.swift
//  SnugSpace
//
//  Created by admin56 on 19/07/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment:.leading){
                    HStack{
                        Text("SnugSpace")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .padding(.top,10)
                            .padding(.horizontal)
                        Image(systemName: "bonjour")
                            .padding(.top,10)
                            .fontWeight(.light)
                            .foregroundStyle(.black)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                SearchAndFilterBar()
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self){ listing in
                        NavigationLink(value : listing){
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }

                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){listing
                in LisitingDetailView()
                .toolbar(.hidden)

            }
        }
    }
}

#Preview {
    ExploreView()
}
