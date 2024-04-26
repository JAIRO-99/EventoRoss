//
//  ItemDetailView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 12/04/24.
//

import SwiftUI

struct ItemDetailView: View {
    
    var itemProduct: EventoModel
    var body: some View {
        NavigationStack{
            ScrollView {
                    ZStack{
                        Color(red: 100.937, green: 0.937, blue: 0.937)
                            .edgesIgnoringSafeArea(.all)
    
                        VStack{
                            Image(itemProduct.image)
                                .resizable()
                                .scaledToFill()
                                .frame(maxWidth: .infinity)
                                
                            
                            NameDecorativeView()
                                .offset(x:-10, y: -40)
                                .padding()
                            
                            HStack{
                                
                                Text("Cotiza a un solo toque")
                                    .font(.custom("PlayfairDisplay-Regular", size: 17))
                                    .fontWeight(.medium)
                                
                                    .padding(.horizontal)
                                    .frame(width: 210,height: 30)
                                    .background(.white)
                                    .cornerRadius(10)
                                    .padding()
                                
                                Image(systemName: "arrowshape.right")
                                    .foregroundColor(Color(red: 10.937, green: 20.937, blue: 200.937))
                                /*
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 40)
                                            .stroke(.brown, lineWidth: 1)
                                    )
                                */
                                Spacer()
                                
                                Button{
                                    
                                }label: {
                                    Image(systemName: "f.circle.fill")
                                        .resizable()
                                        .frame(width: 40,height: 40)
                                        .background(.white)
                                        .clipShape(Circle())
                                     
                                }
                                .frame(width: 50,height: 50)
                                Button{
                                    
                                }label: {
                                    Image(systemName: "phone.circle")
                                        .resizable()
                                        .frame(width: 40,height: 40)
                                        .background(.white)
                                        .clipShape(Circle())
                                        .foregroundColor(.green)
                                }
                            }
                            .padding()
                            .padding(.horizontal)
                            .background(.brown)
                            .cornerRadius(50, corners: .topLeft)
                            .cornerRadius(50, corners: .bottomRight)
                            .frame(maxWidth: .infinity, alignment:.bottom)
                            .offset(x: -25)
                        }
                        
                    }
                    .edgesIgnoringSafeArea(.bottom)
                .navigationTitle("Decoración Minnie")
            .navigationBarTitleDisplayMode(.inline)
           
            }
        }
    }
}

#Preview {
    ItemDetailView(itemProduct: EventoModel.example)
}

struct NameDecorativeView: View {
   // var product: EventoModel
    var body: some View {
        VStack(alignment: .leading){
            Text("")
                .font(.title)
                .fontWeight(.bold)
            
            HStack(spacing: 10){
                ForEach(0..<5){ _ in
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .frame(width:15)
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading, 8)
                Spacer()
            }
            
            Text("Descripción")
                .fontWeight(.medium)
                .padding(.vertical,8)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack {
                
                VStack(alignment: .leading) {
                    Text("Principal")
                        .fontWeight(.medium)
                    .padding(.vertical,8)
                    
                    Label("Globos: Ramillete 2 metros", systemImage: "glowplug")
                        .opacity(0.6)
                    Label("Muebleria: Mesas, Banquitos", systemImage: "table.furniture")
                        .opacity(0.6)
                    Label(" Luces: Sicodelicas, Led", systemImage: "lightbulb")
                        .opacity(0.6)
                    
                    Text("Accesorios")
                        .fontWeight(.medium)
                    .padding(.vertical,8)
                    
                    Label("Stickers", systemImage: "mappin")
                        .opacity(0.6)
                    Label("Velas fugaces", systemImage: "sun.min")
                        .opacity(0.6)
                    Label("Antifaces", systemImage: "livephoto")
                        .opacity(0.6)
                    /*
                    
                        
                        
                        
                       
                    }
                    .padding()
                    .background(.brown)
                    .cornerRadius(20)
                    .padding(.vertical)
                    */
                   // .frame(maxWidth: .infinity)
                    
                    Rectangle()
                        .frame(width: 100, height: 2)
                        .foregroundColor(.brown)
                    HStack{
                        ForEach(0..<6){i in
                            Circle()
                                .frame(width: 20, height: 20)
                        }
                    }
                    .foregroundColor(.brown)
                }
            }
            .padding(.vertical)
        }
        .padding()
        .padding(.top)
        .background(Color(red: 100.937, green: 0.937, blue: 0.937))
        
        .cornerRadius(40)
        
    }
}

