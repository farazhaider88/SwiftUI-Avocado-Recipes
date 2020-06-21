//
//  DishesView.swift
//  Avocado Recipes
//
//  Created by Faraz Haider on 21/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

struct DishesView: View {
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack(alignment: .leading, spacing: 4){
                LeftView(iconName: "icon-toasts", title: "Toasts")
                Divider()
                LeftView(iconName: "icon-tacos", title: "Tacos")
                Divider()
                LeftView(iconName: "icon-salads", title: "Salads")
                Divider()
                LeftView(iconName: "icon-halfavo", title: "Spreads")
                Divider()
            }
            
            VStack(alignment: .center, spacing: 16){
                HStack(){
                    Divider()
                }
                Image(systemName: "heart.circle").imageScale(.large).font(Font.title.weight(.ultraLight))
                HStack(){
                    Divider()
                }
            }
            
            
            VStack(alignment: .leading, spacing: 4){
                RightView(title: "Guacamole", iconName: "icon-guacamole")
                Divider()
                RightView(title: "Sandwich", iconName: "icon-sandwiches")
                Divider()
                RightView(title: "Soup", iconName: "icon-soup")
                Divider()
                RightView(title: "Smoothies", iconName: "icon-smoothies")
                Divider()
            }
        }.font(.system(.callout,design:.serif)).foregroundColor(.gray).padding(.horizontal).frame(maxHeight:220)
    }
}


struct IconModifier:ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView().previewLayout(.fixed(width: 440, height: 280))
    }
}

struct LeftView: View {
    var iconName : String
    var title: String
    var body: some View {
        HStack(){
            Image(iconName).resizable().modifier(IconModifier())
            Spacer()
            Text(title)
        }
    }
}

struct RightView: View {
    var title: String
    var iconName : String
    var body: some View {
        HStack(){
            Text(title)
            Spacer()
            Image(iconName).resizable().modifier(IconModifier())
        }
    }
}
