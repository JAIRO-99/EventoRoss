//
//  UserView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        
        NavigationView {
            ZStack{
                Color(red: 100.937, green: 0.937, blue: 0.937)
                    .edgesIgnoringSafeArea(.all)
                Form{
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .overlay(
                            Circle()
                                .stroke(.black, lineWidth: 1)
                        )
                        .clipShape(Circle())
                        .padding(.top)
                    Section("Usuario"){
                        Text("Rossana Muñoz")
                    }
                    Section("Número de Celular"){
                        Text("992 378 749")
                    }
                    Section("Estadísticas"){
                        HStack{
                            VStack(alignment: .center){
                                Text("+ 123")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                Text("Decoraciones")
                                    .font(.caption)
                            }
                            Spacer()
                            Divider()
                            Spacer()
                            VStack(alignment: .center){
                                Text("+102")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                Text("Usuarios")
                                    .font(.caption)
                            }
                            Spacer()
                            Divider()
                            Spacer()
                            VStack(alignment: .center){
                                HStack(spacing: 2){
                                    Image(systemName: "star")
                                        .font(.title2)
                                        .foregroundColor(.blue)
                                        
                                    Text("58")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                    Text("Favoritos")
                                    .font(.caption)
                            }
                            }
                    }
                }
               
            }
        
        .navigationTitle("Usuario")
        //.navigationBarTitleDisplayMode(.inline)
        }
        .background(Color(red: 100.937, green: 0.937, blue: 0.937)
            .edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    UserView()
}
