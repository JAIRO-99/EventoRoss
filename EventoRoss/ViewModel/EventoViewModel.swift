//
//  EventoViewModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

// CON ESTE TRABAJAR PARA AGREGAR COREDATA , ESTA OK LA APP
import Foundation
import SwiftUI
import CoreData


final class EventoViewModel: ObservableObject{
    
   
    @Published private (set)var eventos: [EventoModel] = []
    @Published private (set)var totalPrice = 0.0
    @Published var savedEntities : [EventoEntity] = []
  
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "EventoData")
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Error loading core data \(error)")
            }
        }
        fetchEvents()
    }
    
    func fetchEvents(){
        let request = NSFetchRequest<EventoEntity>(entityName: "EventoEntity")
        
        do{
           savedEntities = try container.viewContext.fetch(request)
        }catch let error {
            print("Error fetching \(error)")
        }
    }
    
    //Agregar nuevo evento
    func addEvent(name: String, descriptions: String, price: Double){
        let newEvent = EventoEntity(context: container.viewContext)
        newEvent.name = name
        newEvent.price = price
        newEvent.descriptions = descriptions
        savedData()
    }
    
    func savedData(){
        do{
            try container.viewContext.save()
            fetchEvents()
        }catch let error{
            print("Error saving \(error)")
        }
    }
    
    
    //PARA FILTRAR
   
    @Published var searchEventos = ""
         
         var filteredEventos: [EventoModel]{
             guard !itemsPopular.isEmpty else{return itemsPopular}
             return itemsPopular.filter{$0.name.localizedCaseInsensitiveContains(searchEventos)}
         }
     
    
    @MainActor
    func addCart(item: EventoModel){
        if !eventos.contains(where: { model in
            model.id == item.id
        }){
            eventos.append(item)
            totalPrice += item.precio
        }
    }
    func deleteItem(product: EventoModel){
        eventos.removeAll(where: {$0.id == product.id})
        totalPrice -= product.precio
    }
    func favoritesValue (favorite: Binding<EventoModel> ){
     //   favorite.wrappedValue.favorites = !favorite.wrappedValue.favorites
    }
}

