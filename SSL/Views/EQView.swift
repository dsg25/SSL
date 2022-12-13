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
                        .offset(x:45, y:20)
                }
                .offset(x:-40, y:-45)  // Офсет Белого блока
                
                HStack {
                    Image("Encoder_Red")
                    
                    Image("Encoder_Red")
                       .offset(x:45, y:50)
                        
                    Button(action: {buttonEq_1()})
                       {
                           Image("Knob_Small")
                           .renderingMode(.original)
                           .scaleEffect(0.8)
                            .offset(x:-10, y:-28)
                       }
                   
                ZStack {
                    Image(systemName: "circle")
                        .renderingMode(.original)
                        .scaleEffect(0.8)
                       } .offset(x:-10, y:-27) // Индикация кнопки 1
                    
                    
                }    .offset(x:0, y:0)              // Офсет Краного блока
                
                
                    
        }               .offset(x:-42, y:-205) // Офсет всего вертикального стека
                
                
                
            
            
        }
        .background(Color.black)
        .edgesIgnoringSafeArea(.top)
    }
    
    
}

func buttonEq_1() {
    print("Button PRESSED")
    
    //  Image(systemName: "circle.fill")
       // .scaleEffect(0.7)
        //    .foregroundColor(.yellow)
        
}

struct EQ_Previews: PreviewProvider {
    static var previews: some View {
        EQView()
    }
}
