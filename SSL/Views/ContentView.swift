//
//  ContentView.swift
//  SSL
//
//  Created by Kocha on 12.12.2022.
//  Copyright © 2022 DarkGrp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
        @State private var selection = 1 //Какая вкладка откроется по умолчанию

    // Цвет панели (Start)
    init() {
            UITabBar.appearance().barTintColor = .black
        }
    // Цвет панели (End)
    
    var body: some View {
        
        TabView (selection:$selection) {
            
            EQView()
                .tabItem {
                    Image(systemName: "house")
                    Text("EQ")
            }
            .tag(1)
            
            CompView()
                .tabItem {
                    Text("Comp")
            }
            .tag(2)
            
            BusCompView()
                .tabItem {
                    Text("BusComp")
            }
            .tag(3)
        }
        .accentColor(.red)
        //.edgesIgnoringSafeArea(.top) // - маленькая таб панель
         
       
        
    
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
