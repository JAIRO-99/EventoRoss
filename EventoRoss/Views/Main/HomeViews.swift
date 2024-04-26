//
//  HomeViews.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 12/04/24.
//

import SwiftUI

struct HomeViews: View {
    
    @EnvironmentObject var viewModel: EventoViewModel
    @State private var searchDecoracion = ""
    
    @State private var selectedIndex = 0
    var decorations = ["All", "Niñas", "Niños", "Baby Shower", "Revelación de Sexo", "15 Años","18 Años","50 Años"]
    
     
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 100.937, green: 0.937, blue: 0.937)
                .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    VStack(alignment: .leading){
                        
                        HStack{
                            Button{
                                
                            }label: {
                                Image(systemName: "filemenu.and.selection")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                    .foregroundColor(.brown)
                            }
                            
                            Spacer()
                            Image("logo")
                                .resizable()
                                .frame(width: 50,height: 50)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(.brown,lineWidth: 1)
                                )
                        }
                        .padding(.horizontal)
                        
                        VStack{
                            Text("Encuentra la \nDecoracion")
                                .font(.custom("PlayfairDisplay-Regular", size: 28))
                            
                            
                            + Text(" Perfecta!")
                                .font(.custom("PlayfairDisplay-Bold", size: 28))
                               
                            
                        }
                        .foregroundColor(.brown)
                        .padding()
                        
                        HStack{
                            Image(systemName: "magnifyingglass")
                            
                            TextField("Buscar decoración", text: $searchDecoracion)
                        }
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1)
                        )
                        .padding()
                        
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(0..<decorations.count,id: \.self){ item in
                                        CategoriesView(isActive: item == selectedIndex, text: decorations[item])
                                        .onTapGesture{
                                            selectedIndex = item
                                        }
                                }
                            }
                            .padding()
                        }
                        
                        
                        VStack(alignment: .leading){
                            Text("Popular")
                                .font(.custom("PlayfairDisplay-Bold", size: 28))
                                .padding()
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    ForEach(itemsPopular, id: \.id){ item in
                                        NavigationLink{
                                            ItemDetailViews(itemProducts: item)
                                        }label:{
                                            ProductCardView(product: item, size: 200)
                                                .environmentObject(viewModel)
                                        }
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.leading)
                            }
                            
                            Text("Best")
                                .font(.custom("PlayfairDisplay-Bold", size: 28))
                                .padding(.horizontal)
                                .padding(.top)
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    ForEach(itemsBest, id: \.id){ item in
                                        NavigationLink{
                                            ItemDetailViews(itemProducts: item)
                                        }label:{
                                            ProductCardView(product: item, size: 180)
                                                .environmentObject(viewModel)
                                             }
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.leading)
                            }
                           
                           
                            
                            
                        }
                        HStack(spacing: 2){
                            ForEach(0..<10){ i in
                                Circle()
                                    .frame(height:40)
                                    .padding()
                                    .foregroundColor(.brown)
                            }
                        }
                   
                           
                            
                    }
                }
            }
            .navigationTitle("Eventos Mágicos")
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.black)
           
        }
    }
}
 

#Preview {
    HomeViews()
        .environmentObject(EventoViewModel())
}
struct CategoriesView: View {
    let isActive: Bool
    let text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text(text)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(isActive ? .brown : .black.opacity(0.6))
            
            if isActive{
                Color (.brown)
                    .frame(width: 15, height: 2)
                    .clipShape(Capsule())
            }
        }
        .padding(.trailing)
    }
}

