//
//  EventoModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import Foundation
import SwiftUI
import SwiftData


//@Model
struct EventoModel: Identifiable{
    
     let id = UUID()
    let name: String
    let descriptions: String
    let precio: Double
    let image: String
    var car: Bool
    let category: Category.RawValue
    
    /*
    init(name: String, descriptions: String, precio: Double, image: String, car: Bool, category: Category.RawValue) {
        self.name = name
        self.descriptions = descriptions
        self.precio = precio
        self.image = image
        self.car = car
        self.category = category
    }
    */
    
    static var example = EventoModel( name: "Decoración Minnie", descriptions: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", car: false, category: "Niñas")

    static var itemDecorations: [EventoModel] = [
        EventoModel( name: "Decoración Minnie", descriptions: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", car: false, category: "Niñas"),
        EventoModel( name: "Decoración Princesa", descriptions: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", car: false, category: "Niñas"),
        EventoModel( name: "Decoración Niño Futbol", descriptions: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", car: false, category: "Niños"),
        EventoModel( name: "Decoración León Baby Shower", descriptions: "Para tu bebé", precio: 190.00, image: "decoracion_4", car: false, category: "Baby Shower"),
        EventoModel( name: "Decoración Vaca Lola", descriptions: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", car: false, category: "Niños"),
        EventoModel( name: "Decoración 15 Años", descriptions: "Para tu princesa", precio: 230.00, image: "decoracion_6", car: false, category: "15 Años"),
        EventoModel( name: "Decoración 15 Años", descriptions: "Para princesas", precio: 200.00, image: "decoracion_7", car: false, category: "15 Años"),
        EventoModel( name: "Decoración Bruno", descriptions: "Para tu engreida", precio: 180.00, image: "decoracion_8", car: false, category: "Niñas"),
        EventoModel( name: "Decoración PawPatrol Niñas", descriptions: "La egreida del hogar", precio: 210.00, image: "decoracion_9", car: false, category: "Niñas")
    ]
}

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case niñas = "Niñas"
    case niños = "Niños"
    case babyShower = "Baby Shower"
    case revelacionDeSexo = "Revelación de Sexo"
    case quinceAños = "15 Años"
    case dieciochoAños = "18 Años"
    case cincuentaAños = "50 Años"
}


let itemsPopular: [EventoModel] = [
    EventoModel( name: "Decoración Minnie", descriptions: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", car: false, category: "Niñas"),
    EventoModel( name: "Decoración León Baby Shower", descriptions: "Para tu bebé", precio: 190.00, image: "decoracion_4", car: false, category: "Baby Shower"),
    EventoModel( name: "Decoración 15 Años", descriptions: "Para princesas", precio: 200.00, image: "decoracion_7", car: false, category: "15 Años"),
    EventoModel( name: "Decoración Bruno", descriptions: "Para tu engreida", precio: 180.00, image: "decoracion_8", car: false, category: "Niñas"),
    EventoModel( name: "Decoración PawPatrol Niñas", descriptions: "La egreida del hogar", precio: 210.00, image: "decoracion_9", car: false, category: "Niñas")
    
]

let itemsBest: [EventoModel] = [
    EventoModel( name: "Decoración Princesa", descriptions: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", car: false, category: "Niñas"),
    EventoModel( name: "Decoración Niño Futbol", descriptions: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", car: false, category: "Niños"),
    EventoModel( name: "Decoración León Baby Shower", descriptions: "Para tu bebé", precio: 190.00, image: "decoracion_4", car: false, category: "Baby Shower"),
    EventoModel( name: "Decoración Vaca Lola", descriptions: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", car: false, category: "Niños"),
    EventoModel( name: "Decoración 15 Años", descriptions: "Para tu princesa", precio: 230.00, image: "decoracion_6", car: false, category: "15 Años")
]

