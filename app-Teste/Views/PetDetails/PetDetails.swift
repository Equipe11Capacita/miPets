//
//  ViewPetDetail.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 06/02/25.
//

import SwiftUI

struct PetDetails: View {
    var pet: PetModel
    @Environment(\.dismiss) private var dismiss
    @StateObject var homeViewModel: HomeViewModel
    @State private var isSheetOpen: Bool = false;

    var body: some View {
        VStack(alignment: .leading) {
                Text("Nome: \(pet.nome)")
                    .font(.title)
                Text("Raça: \(pet.raca)")
                    .font(.headline)
                Text("Idade: \(pet.idade) anos")
                    .font(.subheadline)
            
            Spacer()

            HStack(spacing: 40) {
                Button {
                    homeViewModel.deletePet(petToDelete: pet)
                    dismiss()
                } label: {
                    Text("Deletar pet")
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .frame(width: 118)
                        .background(Color(.red))
                        .cornerRadius(8)
                        .contentShape(Rectangle())
                    
                    
                        
                }
                

                Button {
                    isSheetOpen.toggle()
                } label: {
                    Text("Editar pet")
                   
                        .foregroundColor(.black)
                        .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                        .frame(width: 118)
                        .background(Color("Botao"))
                        .cornerRadius(8)
                        .contentShape(Rectangle())
                }
            }
            
            Spacer()

        }
            .padding()
            .sheet(isPresented: $isSheetOpen) {
                EditPetView(homeViewModel: homeViewModel, petParaEditar: pet)
            }
    }
}


