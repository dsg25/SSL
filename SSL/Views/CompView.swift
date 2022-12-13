//
//  CompView.swift
//  SSL
//
//  Created by Kocha on 12.12.2022.
//  Copyright © 2022 DarkGrp. All rights reserved.
//

import SwiftUI

struct CompView: View {
    
    @State private var eq = 0
    
    var body: some View {
        
        VStack {
            Text("This Compressor View")
                .foregroundColor(.blue)
                .padding(40)
//
//            Button(action: {
//
//                butPress()
//
//            }) {
//                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
//                    .padding(20)
//            }
//            Text("\(self.eq)")
//
            
        }   .padding(40)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
        
        
    
    }
    
    func butPress() {
            eq += 1
        
    }
    
}



struct CompView_Previews: PreviewProvider {
    static var previews: some View {
        CompView()
    }
}


