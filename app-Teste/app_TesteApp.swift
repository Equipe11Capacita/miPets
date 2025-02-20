//
//  app_TesteApp.swift
//  app-Teste
//
//  Created by iredefbmac_29 on 21/01/25.
//

import SwiftUI

@main
struct app_TesteApp: App {
    @State var splashIsActive:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if splashIsActive{
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.1) {
                            self.splashIsActive = false
                        }
                    }
            } else {
                HomeView()
            }
        }
    }
}

