//
//  TabBarView.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 20/11/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
       
        
        
        
        TabView {
            
            // Prima scheda
            HomeView()
                .tabItem {
                    Image(systemName:"house")
                    Text("Home")
                }

            // Seconda scheda
            ProductsIView()
                .tabItem {
                    Image(systemName:"magnifyingglass")
                          Text("Products")
                }
            
            // Terza scheda
            OrdersView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Orders")
                
                }
            
            // Quarta scheda
           AccountView()
                .tabItem {
                    Image(systemName:"person.crop.circle.fill")
                    Text("Account")
                }
            
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}

#Preview {
    TabBarView()
}
