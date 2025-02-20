//
//  PetModel.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 31/01/25.
//

import Foundation

struct PetModel: Identifiable {
    var id: UUID = UUID()
    var nome: String
    var raca: String
    var idade: Int
    
}
