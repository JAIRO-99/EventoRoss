//
//  ContentView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 12/04/24.
//
// OK PARA CORE DATA
import SwiftUI


struct ContentView: View {
    
    @StateObject var viewModel = EventoViewModel()
    
    @State var indexSelectedIcons = 0
    
    var body: some View {
        NavigationView{
                TabBar()
                    .environmentObject(viewModel)
            
        }
       
    }
}

#Preview {
    ContentView()
        .environmentObject(EventoViewModel())
}




