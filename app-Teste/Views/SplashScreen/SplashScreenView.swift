//
//  SplashScreenView.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 17/02/25.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            Color("SplashScreenColor")
                .ignoresSafeArea()
            
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
