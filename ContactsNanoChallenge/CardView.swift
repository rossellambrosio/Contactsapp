//
//  CardView.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 16/11/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                Image("ross1")
                    .resizable()
                    .frame(width: 75.0, height: 75.0)
                    .clipShape(Circle())
                    .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading) {
                    Text("Rossella Ambrosio")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .bold()
                        
                    Text("My Card")
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.357, green: 0.357, blue: 0.357))
                        .multilineTextAlignment(.leading)
                }
                .padding()
//                .offset(x: -8)
            }
        }
        .background(Color.white) // Cambia il colore 

        
        
    }
}

#Preview {
    CardView()
}
