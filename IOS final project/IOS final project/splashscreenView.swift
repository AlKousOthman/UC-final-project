//
//  splashscreenView.swift
//  IOS final project
//
//  Created by Othman Alkous on 29/09/2022.
//

import SwiftUI

struct splashscreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opasity = 0.5

    var body: some View {
        
        if isActive {
            ContentView()
        } else{
            VStack{
                VStack{
                    Image(systemName: "pawprint.circle.fill")
                        .font(.system(size: 100))
                    Text("PETS DETAILS")
                        .fontWeight(.semibold)
                        .font(.system(size: 26))
                    
                }
                .scaleEffect(size)
                .opacity(opasity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opasity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
            
        }
        
        
    }
}


        
        
        
        



struct splashscreenView_Previews: PreviewProvider {
    static var previews: some View {
        splashscreenView()
    }
}
