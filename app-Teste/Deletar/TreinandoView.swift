//
//  TreinandoView.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 24/01/25.
//

import SwiftUI

struct TreinandoView: View {
    @State private var CadastrarPet: String = ""
    var body: some View {
    
        Text("MiPets")
            .font(.largeTitle)
            .navigationTitle("MiPets")
            .bold()
        
        Text("Bem Vindo")
            .font(.largeTitle)
            .bold()
            .padding(.top)
        VStack(alignment: .leading, spacing: 20){
            Text("Pet:Figaro")
                .bold()
            Text("Pet:Zangado")
            .bold()        }
        
        HStack{
            Image(systemName: "plus.circle")
            Text("Cadastrar Pet")
        }    }
}
#Preview {
    TreinandoView()
}
