//
//  Tests.swift
//  SSL
//
//  Created by Kocha on 13.12.2022.
//  Copyright © 2022 DarkGrp. All rights reserved.
//

import SwiftUI

struct Tests: View {
    
    var body: some View {
        VStack {
           Text("HELLO!")
        }
    }

}

struct Tests_Previews: PreviewProvider {
    static var previews: some View {
        Tests()
    }
}


// **************** КНОПКА С ФУНКЦИЕЙ ****************
//
//    struct Tests: View {
//
//    @State var i: Color = Color.pink
//
//    var body: some View {
//        VStack {
//
//            Button(action: {
//                self.bPress()
//
//            }, label: {Image(systemName: "house")
//                .scaleEffect(2)
//                .padding()
//            }
//                    )
//                }.background(self.i)
//                        }
//    func bPress()
//        { i = .yellow }
//    }
// ****************************************************
