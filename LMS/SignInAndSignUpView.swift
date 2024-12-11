//
//  SignInAndSignUpView.swift
//  LMS
//
//  Created by Sudhanshu Singh Rajput on 11/12/24.
//

import SwiftUI

struct SignInAndSignUpView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing:10){
                Image("SignIn")
                    .resizable()
                    .frame(width: 349, height: 298)
                Text("Join Cybex IT Group to Kick Start Your Lesson")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top,4)
                    .transition(.opacity.animation(.easeInOut(duration: 0.5)))
                Text("Join and Learn from our Top Instructors!")
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.top,4)
                    .transition(.opacity.animation(.easeInOut(duration: 0.5)))
                HStack{
                    Button {
                        
                    } label: {
                        Text("Sign In")
                            .font(.headline)
                            .frame(width: 171, height: 54)
                            .background(Color(red: 0.0, green: 0.184, blue: 0.588))
                            .foregroundStyle(Color.white)
                            .cornerRadius(10)
                    }
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .font(.headline)
                            .frame(width: 171, height: 54)
                            .foregroundStyle(Color.black)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black,lineWidth: 1)
                        }
                    }
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignInAndSignUpView()
}
