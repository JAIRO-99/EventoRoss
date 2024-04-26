//
//  ItemDetailViews.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct ItemDetailViews: View {
    var itemProducts: EventoModel
    var body: some View {

            ScrollView{
                ZStack {
                    Color(red: 100.937, green: 0.937, blue: 0.937)
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        Image(itemProducts.image)
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            
                        
                        VStack(alignment: .leading){
                            Text(itemProducts.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.horizontal)
                            
                            
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
                            .padding(.horizontal)
                            HStack{
                                Text("Descripción")
                                    .fontWeight(.medium)
                                    .padding(.vertical,8)
                                    .padding(.horizontal)
                                Spacer()
                                Text("Categoria:  \(itemProducts.category)")
                                    .padding(.horizontal)
                            }
                            Text(itemProducts.description)
                                .lineSpacing(8.0)
                                .opacity(0.6)
                                .padding(.horizontal)
                            
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
                            }
                            .padding()
                            
                           
                        }
                        
                        .padding(.top)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 100.937, green: 0.937, blue: 0.937))
                        .cornerRadius(20)
                        .offset(y: -40)
                        
                        HStack{
                            ForEach(0..<6){i in
                                Circle()
                            }
                            .frame(width: 30, height: 30)
                        }
                        .foregroundColor(.brown)
                    }
                    
                   
                }
                
            }
            .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    ItemDetailViews(itemProducts: EventoModel.example)
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
