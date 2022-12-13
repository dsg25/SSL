//
//  EQ.swift
//  SSL
//
//  Created by Kocha on 12.12.2022.
//  Copyright © 2022 DarkGrp. All rights reserved.
//

import SwiftUI

struct EQView: View {
    var body: some View {
        ZStack {
            Image("BG_EQ")
                .resizable()
                //.edgesIgnoringSafeArea(.top)
                .padding(-1)
              
            VStack {
                
                HStack {
                    Image("Encoder_White")
                       
                    Image("Encoder_White")
                        .offset(x:45, y:0)
                }
                    .offset(x:-80, y:-235)
                
                HStack {
                    Image("Encoder_Red")
                        
                    Image("Encoder_Red")
                      .offset(x:45, y:50)
                }.offset(x:-80, y:-205)
                
                
                
            }
            
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.top)
    }
    
}
struct EQ_Previews: PreviewProvider {
    static var previews: some View {
        EQView()
    }
}
