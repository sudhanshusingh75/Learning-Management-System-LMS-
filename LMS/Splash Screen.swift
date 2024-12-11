//
//  Splash Screen.swift
//  LMS
//
//  Created by Sudhanshu Singh Rajput on 11/12/24.
//

import SwiftUI
import UIKit

struct Splash_Screen: View {
    
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var isActive = false
    
    var body: some View {
        if isActive{
            ContentView()
        }
        else{
            VStack{
                VStack{
                    Image("SplashScreen_Image")
                        .resizable()
                        .frame(width: 142,height: 127)
                        
//                    Text("Adiverse Learning")
//                        .font(Font.custom("Baskerville-Bold", size: 26))
//                        .foregroundColor(Color(red: 0.0, green: 0.184, blue: 0.588))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeInOut(duration: 3)){
                        self.opacity = 1
                        self.size = 0.9
                    }
                }
                
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation{
                        self.isActive = true
                    }
                }
        
            }
        }
    }
}

#Preview {
    Splash_Screen()
}
