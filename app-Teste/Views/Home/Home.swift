//
//  home.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 02/02/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @State private var isSheetOpen = false
    
    var body: some View {
        // TODO: Adaptar ao design do aplicativo
        VStack(alignment: .center) {
            // TODO: SUBSTITUIR PELO NOME DO PROJETO
            Image("Logo")
                //caso mude de ideia, basta deletar o image e colar o Text até o .font//
                
            NavigationStack {
                Text("Seus Pets")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                List{
                    Text("Seus pets: ")
                    ForEach(homeViewModel.pets, id: \.id) { pet in
                        NavigationLink {
                            PetDetails(pet: pet, homeViewModel: homeViewModel)
                        } label: {
                            PetCard(pet: pet)
                        }
                    }
                }

                CustomButton(buttonLabel: "Adicionar Pet"){
                    isSheetOpen.toggle()
                    
                }
            }
        }
        
        .sheet(isPresented: $isSheetOpen) {
            AddPetView(viewModel: homeViewModel)
        }
    }
}
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
