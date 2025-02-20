//
//  CustomButton.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 17/02/25.
//
import SwiftUI
struct CustomButton: View {
    
    var buttonLabel: String
    var buttonAction: () -> Void
    
    
    var body: some View {
        Button {
            buttonAction()
        } label: {
            Text(buttonLabel)
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                .frame(width: 327)
                .background(Color("Botao"))
                .cornerRadius(8)
                .contentShape(Rectangle())
        }
    }
}
