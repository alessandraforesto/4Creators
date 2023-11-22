//
//  ProductsIView.[∑]
//  SkeepersApp
//
//  Created by Alessandra Foresto on 20/11/23.
//

import SwiftUI

struct ProductsIView: View {
    var body: some View {

        NavigationView{
            VStack {
                HStack {
                    Button(action: {
                        // Azioni quando il primo pulsante viene premuto
                        print("Primo pulsante premuto")
                    }) {
                        
                        Text("ORDINA")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                    
                    
                    Spacer()
                    
                    
                    Button(action: {
                        // Azioni quando il secondo pulsante viene premuto
                        print("Secondo pulsante premuto")
                    }) {
                        Text("FILTRA")
                            .fontWeight(.semibold)
                            .padding()
                            .background(Color.white)
                            .foregroundColor(Color.black)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                
                ScrollView{
                    CollectionsView()
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Text("PRODUCTS")
                        .font(.title)
                        .bold()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        // Azioni per l'altro elemento di destra
                        print("Altro tasto destro premuto")
                    }) {
                        Image(systemName: "paperplane")
                        
                        
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        // Azioni per l'elemento di sinistra
                        print("Tasto Sinistro premuto")
                    }) {
                        Image(systemName: "numbersign")
                    }
                }
            })
        }
    }
    
    
}
#Preview {
    ProductsIView()
}
