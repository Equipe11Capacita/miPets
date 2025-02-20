//
//  HomeViewModel.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 10/02/25.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var pets: [PetModel] = []
    
    func createNewPet(nome: String, raca: String, idade: Int) {
        let newPet = PetModel(nome: nome, raca: raca, idade: idade)
        pets.append(newPet)
    }
    
    func updatePet(petToUpdate: PetModel, newPet: PetModel) {
        guard let index = pets.firstIndex(where: {$0.id == petToUpdate.id}) else { return }
        pets[index].nome = newPet.nome
        pets[index].raca = newPet.raca
        pets[index].idade = newPet.idade
    }
    
    func deletePet(petToDelete: PetModel) {
        guard let index = pets.firstIndex(where: {$0.id == petToDelete.id}) else { return }
        pets.remove(at: index)
    }
}
