//
//  CollectionsView.swift
//  SkeepersApp
//
//  Created by Alessandra Foresto on 21/11/23.
//

import SwiftUI

struct fotoStruct:Identifiable{
    
    var id = UUID()
    var imageName: String
    var descrizione: String
    var sottotitolo: String
}

struct CollectionsView: View {
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var fotoArray = [fotoStruct(imageName: "medavita", descrizione: "Xmas Nutrisubstance 😍", sottotitolo: "Madavita"),
                     fotoStruct(imageName: "lalalab", descrizione: "✨NEW COVER & PHOTOS!💜", sottotitolo: "Lalalab"),
                     fotoStruct(imageName: "pupa", descrizione: "Holiday Land Make-up look", sottotitolo: "Pupa Milano"),
                     fotoStruct(imageName: "merci", descrizione: "Skin Detox Heroes 😍", sottotitolo: "Merci Handy Italy"),
                     fotoStruct(imageName: "ALPS", descrizione: "ALPS", sottotitolo: "alps"),
                     fotoStruct(imageName: "Spray Fixant Invisible", descrizione: "LE SPRAY FIXANT INVISIBLE", sottotitolo: "Sisley IT")
                     
    ]
    
    var body: some View {
        
        LazyVGrid(columns: columns){
            ForEach(fotoArray){ foto in
                VStack{
                    Image(foto.imageName)
                         .resizable()
                         .cornerRadius(10)
                         .scaledToFit()
                         .frame(width: 150)
                    Text(foto.descrizione)
                        .font(.caption)
                    Text(foto.sottotitolo)
                        .font(.caption2)
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }
            }
        }
        
 
        
        
    }
}

#Preview {
    CollectionsView()
}
