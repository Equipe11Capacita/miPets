//
//  EditPet.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 06/02/25.
//

import SwiftUI

struct EditPetView: View {
    @Environment(\.dismiss) private var dismiss
    @StateObject var homeViewModel: HomeViewModel
    
    var petParaEditar: PetModel
    @State private var nome: String = ""
    @State private var raca: String = ""
    @State private var idade: Int = 0
   
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Novas Informações:")) {
                    TextField("Nome", text: $nome)
                    TextField("Raça", text: $raca)
                    // TODO: ADICIONAR VERIFICACAO PRA IMPEDIR IDADES NEGATIVAS
                    Stepper("Idade: \(idade) anos", value: $idade)
                }
            }
            .navigationTitle("Editar Pet")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancelar") { dismiss() }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Salvar") {
                        let newPet = PetModel(nome: nome, raca: raca, idade: idade)
                        homeViewModel.updatePet(petToUpdate: petParaEditar, newPet: newPet)
                        dismiss()
                    }.disabled(nome.isEmpty || raca.isEmpty || idade < 0)                }
            }
        }
    }
}
 
