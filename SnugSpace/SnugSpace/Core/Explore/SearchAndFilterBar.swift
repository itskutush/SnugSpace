//
//  SearchAndFilterBar.swift
//  SnugSpace
//
//  Created by admin56 on 19/07/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading,spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Ayy guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.blue)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.2)
                .foregroundStyle(Color(.systemBlue))
                .shadow(color:.blue.opacity(0.3) ,radius: 2)
            
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
