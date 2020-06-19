//
//  AppView.swift
//  Avocado Recipes
//
//  Created by Faraz Haider on 20/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            AvocadosView().tabItem ({
                Image("tabicon-branch")
                Text("Avocados")
            })
            ContentView().tabItem ({
                  Image("tabicon-book")
                  Text("Recipes")
              })
            RipeningStagesView().tabItem ({
                  Image("tabicon-avocado")
                  Text("Avocados")
              })
            SettingsView().tabItem ({
                  Image("tabicon-settings")
                  Text("Settings")
              })
        }.edgesIgnoringSafeArea(.top).accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
