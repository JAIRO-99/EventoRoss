//
//  UserView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("piel")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack{
                        Image("logo2")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 400)
                        
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 250)
                            .clipShape(Circle())
                            .shadow(radius: 20)
                            .offset(y:-150)
                        
                        VStack(alignment: .leading){
                            Label("Rossana Muñoz", systemImage: "person")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                            
                            Label("992 378 749", systemImage: "iphone")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                            
                            VStack {
                                HStack{
                                    VStack{
                                        HStack{
                                        Image(systemName: "plus")
                                                .font(.headline)
                                            
                                        Text("25")
                                            .font(.headline)
                                    }
                                        .foregroundColor(.blue)
                                        Label("Decoraciones", systemImage: "sun.max.fill")
                                            .font(.headline)
                                    }
                                    
                                    Spacer()
                                    Divider()
                                    Spacer()
                                    
                                VStack{
                                        HStack{
                                            Image(systemName: "plus")
                                                    .font(.headline)
                                        Text("121")
                                            .font(.headline)
                                    }
                                        .foregroundColor(.blue)
                                        Label("usuarios", systemImage: "person.3.fill")
                                            .font(.headline)
                                       
                                    }
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.white)
                                .cornerRadius(10)
                            .padding(.horizontal)
                            }
                            
                            VStack {
                                Text("Siguenos en nuestras redes:")
                                    .font(.title2)
                                
                                HStack{
                                    Button{
                                        
                                    }label: {
                                        Image("wsp")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50)
                                    }
                                   
                                    Divider()
                                    
                                    Button{
                                        
                                    }label: {
                                        Image("ig")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50)
                                    }
                                    
                                }
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(10)
                        .padding(.horizontal)
                            }
                        
                        .offset(y: -120)
                        Spacer()
                    }
                }
                .ignoresSafeArea(.container, edges: .top)
            }
        }
        /*
        NavigationView {
            ZStack{
                Color("piel")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
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
               
            }
        
        .navigationTitle("Usuario")
        //.navigationBarTitleDisplayMode(.inline)
        }
      */
    }
}

#Preview {
    UserView()
}
