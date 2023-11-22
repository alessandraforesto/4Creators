//
//  VisualBar.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 21/11/23.
//

import SwiftUI

struct VisualBar: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue)
                .frame(width: 360,height: 50)
                .ignoresSafeArea(.all,edges: .all)
            Text("View all the products")
                .font(.headline)
                .foregroundStyle(Color.blue)
                .padding()
                
        }
        
        
    }
}

#Preview {
    VisualBar()
}
