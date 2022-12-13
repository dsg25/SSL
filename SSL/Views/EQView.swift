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
