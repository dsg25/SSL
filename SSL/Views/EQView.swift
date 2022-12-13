//
//  EQ.swift
//  SSL
//
//  Created by Kocha on 12.12.2022.
//  Copyright © 2022 DarkGrp. All rights reserved.
//

import SwiftUI

struct EQView: View {
    
    @State var eqLed1 = false
    @State var eqLed2 = false
    @State var eqLed3 = false
    @State var eqLed4 = false
    
    var body: some View {
        ZStack {
            Image("BG_EQ")
                .resizable()
                //.edgesIgnoringSafeArea(.top)
                .padding(-1)
            Image("Grid")
            .resizable()
            .padding(-1)
            
            VStack {
                
                HStack {
                    Image("Encoder_White")
                    Image("Encoder_White")
                        .offset(x:45, y:20)
                } .offset(x:-40, y:-45)  // Офсет Белого блока
        
    // ***** Красный блок ******
                
                HStack {
                    Image("Encoder_Red")
                    Image("Encoder_Red")
                       .offset(x:45, y:50)
                    Button(action: {
                            self.eqLed1.toggle()
                        })
                    {
                    Image("Knob_Small")
                        .renderingMode(.original)
                        .scaleEffect(0.8)
                        .offset(x:-10, y:-28)
                        
                       }
// **** Индикация кнопки + MIDI - START ****
                ZStack {
                    Image(systemName: "circle")
                        .renderingMode(.original)
                        .scaleEffect(0.8)
                    Image(systemName: "circle.fill")
                    // .renderingMode(.original)
                     .scaleEffect(0.7)
                     .foregroundColor(Color.black.opacity(0.3))
                    
                if eqLed1 == true {
                    Image(systemName: "circle.fill")
                        .scaleEffect(0.7)
                        .foregroundColor(.yellow)
                        .blur(radius: 5) // Эффект Glow
                    Image(systemName: "circle.fill")
                        .scaleEffect(0.7)
                        .foregroundColor(.yellow)
                    
                    // ADD MIDI COMANDS
                    
                    }
                        } .offset(x:-10, y:-27) // Офсет индикации кнопки 1
                    // **** Индикация кнопки + MIDI - END ****
                
                } .offset(x:-1, y:0)      // Офсет Краного блока
                
                
                    
                } .offset(x:-42, y:-205) // Офсет всего вертикального                                     стека (красные и белые)
        // ***** Зеленый Блок ******
            
            HStack {
                Image("Encoder_Green")
                    .offset(x:-40, y:-40)
                Image("Encoder_Green")
                    .offset(x:5, y:5)
                Image("Encoder_Green")
                    .offset(x:-189, y:55)
            } .offset(x:-5, y:-25)  // Офсет Зеленого блока
            
        // ***** КНОПКИ 2,3 ******
            
            VStack {
                
                Button(action: {
                        self.eqLed2.toggle()
                    })
                {
                Image("Knob_Small")
                .renderingMode(.original)
                .scaleEffect(0.8)
                    .padding(5)
                }
                
              Button(action: {
                      self.eqLed3.toggle()
                  })
              {
              Image("Knob_Small")
              .renderingMode(.original)
              .scaleEffect(0.8)
              }
                
 // **** Индикация кнопки 2 + MIDI - START ****
                ZStack {
                    Image(systemName: "circle")
                        .renderingMode(.original)
                        .scaleEffect(0.8)
                    Image(systemName: "circle.fill")
                        // .renderingMode(.original)
                        .scaleEffect(0.7)
                        .foregroundColor(Color.black.opacity(0.3))
                    
                    if eqLed2 == true {
                        Image(systemName: "circle.fill")
                            .scaleEffect(0.7)
                            .foregroundColor(.yellow)
                            .blur(radius: 5) // Эффект Glow
                        Image(systemName: "circle.fill")
                            .scaleEffect(0.7)
                            .foregroundColor(.yellow)
                        
                        // ADD MIDI COMANDS
                        
                    }
                } .offset(x:40, y:-92) // Офсет индикации кнопки 2
                
                // **** Индикация кнопки 2 + MIDI - END ****
                
// **** Индикация кнопки 3 + MIDI - START ****
                ZStack {
                    Image(systemName: "circle")
                        .renderingMode(.original)
                        .scaleEffect(0.8)
                    Image(systemName: "circle.fill")
                        // .renderingMode(.original)
                        .scaleEffect(0.7)
                        .foregroundColor(Color.black.opacity(0.3))
                    
                    if eqLed3 == true {
                        Image(systemName: "circle.fill")
                            .scaleEffect(0.7)
                            .foregroundColor(.yellow)
                            .blur(radius: 5) // Эффект Glow
                        Image(systemName: "circle.fill")
                            .scaleEffect(0.7)
                            .foregroundColor(.yellow)
                        
                        // ADD MIDI COMANDS
                        
                    }
                } .offset(x:40, y:-55) // Офсет индикации кнопки 3
                
                // **** Индикация кнопки 3 + MIDI - END ****
            
            } .offset(x:8, y:102)  // Офсет Кнопок 2,3
        
        // ***** Синий Блок ******
            
            HStack {
                Image("Encoder_Blue")
                    .offset(x:-40, y:-40)
                Image("Encoder_Blue")
                    .offset(x:5, y:15)
                Image("Encoder_Blue")
                    .offset(x:-189, y:55)
            } .offset(x:-5, y:170)  // Офсет Синего блока
            
            HStack {
                Image("Encoder_Black")
                Image("Encoder_Black")
                    .offset(x:43, y:-40)
                Button(action: {
                        self.eqLed4.toggle()
                    })
                {
                Image("Knob_Small")
                    .renderingMode(.original)
                    .scaleEffect(0.8)
                    .offset(x:-12, y:20)
                    
                   }
              
// **** Индикация кнопки 4 + MIDI - START ****
            ZStack {
                Image(systemName: "circle")
                    .renderingMode(.original)
                    .scaleEffect(0.8)
                Image(systemName: "circle.fill")
                    // .renderingMode(.original)
                    .scaleEffect(0.7)
                    .foregroundColor(Color.black.opacity(0.3))
                
                if eqLed4 == true {
                    Image(systemName: "circle.fill")
                        .scaleEffect(0.7)
                        .foregroundColor(.yellow)
                        .blur(radius: 5) // Эффект Glow
                    Image(systemName: "circle.fill")
                        .scaleEffect(0.7)
                        .foregroundColor(.yellow)
                    
                    // ADD MIDI COMANDS
                    
                }
            } .offset(x:-11, y:20) // Офсет индикации кнопки 4
                
                // **** Индикация кнопки 4 + MIDI - END ****
             
            } .offset(x:-42, y:322)  // Офсет Черного блока
            
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
