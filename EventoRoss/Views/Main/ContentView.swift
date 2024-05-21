//
//  ContentView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 12/04/24.
//
// OK PARA CORE DATA
import SwiftUI

//PARA FILTRAR
/*
 @State private var searchWarrior = ""
     
     var filteredWarriors: [CharacterResponse]{
         guard !searchWarrior.isEmpty else{return characterViewModel.characters}
         return characterViewModel.characters.filter{$0.name.localizedCaseInsensitiveContains(searchWarrior)}
     }
 */
struct ContentView: View {
    
    @StateObject var viewModel = EventoViewModel()
    
    let tabIcons = ["house","heart","cart","person"]
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




