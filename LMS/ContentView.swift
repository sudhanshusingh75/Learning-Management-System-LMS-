//
//  ContentView.swift
//  LMS
//
//  Created by Sudhanshu Singh Rajput on 11/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentIndex = 0
    @State private var imageName:[String] = ["Image","Image1","Image2","Image3"]
    @State private var title:[String] = ["Welcome to Cybex IT Group where learning meets innovation!","Begin your learning journey and unlock a world of knowledge","Dive into a seamless learning experience with Cybex IT Group","Join a community of learners and embark on a learning adventure"]
    @State private var subTitle:[String] = ["Empowering your journey through cutting-edge IT education and expertise","Explore our comprehensive courses designed to transform your skills and career","Experience interactive learning with expert-led courses and progress tracking","Connect with like-minded individuals Join us to learn, grow, and thrive together!"]
    @State private var isNextViewActive:Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image(imageName[currentIndex])
                    .resizable()
                    .frame(width: 346, height: 314)
                    .padding()
                    .transition(.opacity.animation(.easeInOut(duration: 0.5)))
                Text(title[currentIndex])
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .transition(.opacity.animation(.easeInOut(duration: 0.5)))
                Text(subTitle[currentIndex])
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding()
                    .transition(.opacity.animation(.easeInOut(duration: 0.5)))
                PageIndicatorView(totalDots: imageName.count, currentIndex: currentIndex)
                
                    Button {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            if currentIndex < imageName.count - 1 {
                                currentIndex += 1
                            }
                            else{
                                isNextViewActive = true
                            }
                        }
                    } label: {
                        Text("Continue")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(width: 221,height: 57)
                            .background(Color(red: 0.0, green: 0.184, blue: 0.588))
                            .cornerRadius(10)
                        
                    }.padding()
    
                    Spacer()
                
            }
            .padding()
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        withAnimation(.easeInOut(duration: 0.5)) {
                            isNextViewActive = true
                        }
                    } label: {
                        Text("Skip")
                            .font(.footnote)
                            .foregroundColor(Color.black)
                            .frame(width: 49,height: 21)
                            .background(Color(.systemGray5))
                            .cornerRadius(10)
                    }
                }
            }.navigationDestination(isPresented: $isNextViewActive) {
                SignInAndSignUpView()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
