//
//  PetCard.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 06/02/25.
//

import SwiftUI

struct PetCard: View {
    var pet: PetModel

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(pet.nome)
                    .font(.headline)
                Text("Raça: \(pet.raca)")
                    .font(.subheadline)
                Text("Idade: \(pet.idade) anos")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
    }
}

