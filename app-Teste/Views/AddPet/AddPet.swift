//
//  TESTEView.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 28/01/25.
//

import SwiftUI

struct AddPetView: View {
    @StateObject var viewModel: HomeViewModel
    @Environment(\.dismiss) private var dismiss
    
    @State private var nome = ""
    @State private var raca = ""
    @State private var idade = 0
    
    @State private var especie: String = ""
    @State private var descricao: String = ""
  
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Cadastrar novo pet")) {
                    TextField("Nome", text: $nome)
                        .textInputAutocapitalization(.words)
                        .disableAutocorrection(true)
                    
                    TextField("Raça", text: $raca)
                        .textInputAutocapitalization(.words)
                        .disableAutocorrection(true)
                    
                    TextField("Espécie", text: $especie)
                        .textInputAutocapitalization(.words)
                    
                    // TODO: ADICIONAR VERIFICACAO PRA IMPEDIR IDADES NEGATIVAS
                    Stepper("Idade: \(idade) anos", value: $idade)
                    
                    TextEditor(text: $descricao)
                        .frame(height: 100)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
            }
            CustomButton(buttonLabel: "Adicionar Pet") {
                viewModel.createNewPet(nome: nome, raca: raca, idade: idade)
                dismiss()
            } .disabled(nome.isEmpty || raca.isEmpty || idade < 0)
        }
    }
}
