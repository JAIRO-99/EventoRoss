//
//  EventoModel.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 24/04/24.
//

import Foundation
import SwiftUI

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
struct EventoModel: Identifiable{
    
    let id = UUID()
    let name: String
    let description: String
    let precio: Double
    let image: String
    var favorites: Bool
    let category: Category.RawValue
    
    static var example = EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas")
}
/*
extension EventoModel{
    static let all: [EventoModel] = [
        EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas"),
        EventoModel( name: "Decoración Princesa", description: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", favorites: false, category: "Niñas"),
        EventoModel( name: "Decoración Niño Futbol", description: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", favorites: false, category: "Niños"),
        EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
        EventoModel( name: "Decoración Vaca Lola", description: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", favorites: false, category: "Niños"),
        EventoModel( name: "Decoración 15 Años", description: "Para tu princesa", precio: 230.00, image: "decoracion_6", favorites: false, category: "15 Años"),
        EventoModel( name: "Decoración 15 Años", description: "Para princesas", precio: 200.00, image: "decoracion_7", favorites: false, category: "15 Años"),
        EventoModel( name: "Decoración Bruno", description: "Para tu engreida", precio: 180.00, image: "decoracion_8", favorites: false, category: "Niñas"),
        EventoModel( name: "Decoración PawPatrol Niñas", description: "La egreida del hogar", precio: 210.00, image: "decoracion_9", favorites: false, category: "Niñas")
    ]
}
*/
let itemDecorations: [EventoModel] = [
    EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Princesa", description: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Niño Futbol", description: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
    EventoModel( name: "Decoración Vaca Lola", description: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración 15 Años", description: "Para tu princesa", precio: 230.00, image: "decoracion_6", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración 15 Años", description: "Para princesas", precio: 200.00, image: "decoracion_7", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración Bruno", description: "Para tu engreida", precio: 180.00, image: "decoracion_8", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración PawPatrol Niñas", description: "La egreida del hogar", precio: 210.00, image: "decoracion_9", favorites: false, category: "Niñas")
]

let itemsPopular: [EventoModel] = [
    EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
    EventoModel( name: "Decoración 15 Años", description: "Para princesas", precio: 200.00, image: "decoracion_7", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración Bruno", description: "Para tu engreida", precio: 180.00, image: "decoracion_8", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración PawPatrol Niñas", description: "La egreida del hogar", precio: 210.00, image: "decoracion_9", favorites: false, category: "Niñas")
    
]

let itemsBest: [EventoModel] = [
    EventoModel( name: "Decoración Princesa", description: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Niño Futbol", description: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
    EventoModel( name: "Decoración Vaca Lola", description: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración 15 Años", description: "Para tu princesa", precio: 230.00, image: "decoracion_6", favorites: false, category: "15 Años")
]

var all2: [EventoModel] = [
    EventoModel( name: "Decoración Minnie", description: "La mejor decoración de Minnie", precio: 180.00, image: "decoracion_1", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Princesa", description: "La mejor decoración de princesa", precio: 200.00, image: "decoracion_2", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración Niño Futbol", description: "Lo mejor en el futboll, CR7, MESSI y más", precio: 210.00, image: "decoracion_3", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración León Baby Shower", description: "Para tu bebé", precio: 190.00, image: "decoracion_4", favorites: false, category: "Baby Shower"),
    EventoModel( name: "Decoración Vaca Lola", description: "La unica vaca lechera", precio: 220.00, image: "decoracion_5", favorites: false, category: "Niños"),
    EventoModel( name: "Decoración 15 Años", description: "Para tu princesa", precio: 230.00, image: "decoracion_6", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración 15 Años", description: "Para princesas", precio: 200.00, image: "decoracion_7", favorites: false, category: "15 Años"),
    EventoModel( name: "Decoración Bruno", description: "Para tu engreida", precio: 180.00, image: "decoracion_8", favorites: false, category: "Niñas"),
    EventoModel( name: "Decoración PawPatrol Niñas", description: "La egreida del hogar", precio: 210.00, image: "decoracion_9", favorites: false, category: "Niñas")
]
