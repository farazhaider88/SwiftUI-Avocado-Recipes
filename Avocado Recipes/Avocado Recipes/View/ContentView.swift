//
//  ContentView.swift
//  Avocado Recipes
//
//  Created by Faraz Haider on 20/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    
    var headers:[Header] = headerData
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //MARK: - Header
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                //MARK: - DISHES VIEW
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                
                //MARK: - Footer
                VStack(alignment: .center, spacing: 20){
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    Text("Everything you wanted to know about Avocado but afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight:60)
                    
                }.frame(maxWidth:640)
                    .padding()
                    .padding(.bottom,85)
            }
        }.edgesIgnoringSafeArea(.all).padding(0)
    }
}

struct TitleModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.system(.title,design:.serif)).foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData)
    }
}

