//
//  ContentView.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 14/11/23.
//

import SwiftUI

struct HomeView: View {
    
    let catergories: [Category] = [Category(name: "Clothes & Accessories", imageName: "accessories"), Category(name: "Photography", imageName: "photo"),Category(name: "Cosmetics", imageName: "cosmetics"), Category(name: "Haircare", imageName: "haircare"),Category(name: "Gym", imageName: "gym")]
    
    var body: some View {
        
        NavigationStack {
            ScrollView{
                VStack{
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack{
                            ForEach(catergories, id: \.name) { category in
                                ZStack{
                                    
                                    Image(category.imageName)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 80)
                                        .cornerRadius(10)
                                    
                                    HStack {
                                        Text(category.name)
                                            .font(.caption)
                                            .fontWeight(.semibold)
                                        
                                        
                                    }.padding(.top, 50)
                                        .foregroundStyle(Color.white)
                                    
                                }
                            }
                        }.padding(.bottom)
                        
                        Spacer()
                        
                    }
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text("Brand selectioned for you")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Text("discover a new selection of brands, selected specifically for you.")
                        
                        CardView()
                        
                        Spacer()
                        
                        CardView2()
                        
                        Spacer()
                        
                        Text("New Campaigns")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Text("discover what's new in the Free Store.")
                        
                        Spacer()
                        
                        CollectionsView()
                        
                        Spacer()
                        
                        HStack {
                            Spacer()
                            VisualBar()
                            Spacer()
                        }
                            
                        
                        

                    }
                    
                   
                    
                    
                    
                    .padding()
                    .toolbar(content: {
                        ToolbarItem(placement: .principal) {
                            HStack(spacing: -25.0) {
                                Image("logo")
                            
                            .resizable()
                                    .scaledToFit()
                                    .padding(6)
                                    .frame(width: 100.0, height: 100.0)
                                Text("4Creators")
                                    .bold()
                            }
                        }
                    }
                    )
                    .navigationBarItems(
                        leading: HStack {
                            Button(action: {
                                // Azioni per l'elemento di sinistra
                                print("Tasto Sinistro premuto")
                            }) {
                                Image(systemName: "numbersign")
                            }
                        },
                        trailing: HStack {
                            Button(action: {
                                // Azioni per l'altro elemento di destra
                                print("Altro tasto destro premuto")
                            }) {
                                Image(systemName: "paperplane")
                                
                            
                            }
                            
                        }
                    )
                    
                    
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
