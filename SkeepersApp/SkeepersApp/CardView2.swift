//
//  CardView2.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 21/11/23.
//

import SwiftUI

struct CardView2: View {
    var body: some View {
        
        ZStack{
            Image("shoppingbags")
                .resizable()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("PROMOCODE")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 50)
                    )
                
                    
                
                Text("CAMPAIGNS")
                   
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                          
                ZStack{
                    Rectangle()
                        .frame(width: /*@START_MENU_TOKEN@*/250.0/*@END_MENU_TOKEN@*/, height: 50.0)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                    Text("View 2 campaigns")
                        .foregroundColor(Color.black)
                }
              
            }
            
        }
    
    }
}

#Preview {
    CardView2()
}
