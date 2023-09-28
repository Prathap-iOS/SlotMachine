//
//  LaunchScreen.swift
//  Slot Machine
//
//  Created by Prathap Reddy on 28/09/23.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        ZStack {
            Image("gfx-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image("gfx-slot-machine")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .padding(.trailing, 90)
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    LaunchScreen()
}
