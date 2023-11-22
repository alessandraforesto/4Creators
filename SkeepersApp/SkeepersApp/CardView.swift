//
//  CardView.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 20/11/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
      
        VStack(){
            
            Image("lalalabloveit")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                
            Image("lalalabloveit")
                    .resizable()
                    .clipShape(Circle())
            .frame(width: 100, height: 100)
            
            
            Text("Lalalab")
                .font(.title)
                .fontWeight(.semibold)
                
                
                
            Text("The concept is simple: print photos from your smartphone with surprising ease. 🚀")
                .foregroundStyle(.secondary)
        }
        .background(.white)
    }
}

#Preview {
    CardView()
}

//