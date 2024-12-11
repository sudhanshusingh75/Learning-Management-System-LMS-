//
//  SignInView.swift
//  LMS
//
//  Created by Sudhanshu Singh Rajput on 11/12/24.
//

import SwiftUI

struct SignInView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
            Text("Please Sign In With Your Credentials")
                .font(.headline)
                .fontWeight(.light)
                .padding(.bottom,25)
            
            HStack {
                Text("Email Here")
                    .frame(width: 91,height: 35)
                    .foregroundStyle(Color(.systemGray))
                    .padding(.leading,30)
                Spacer()
            }
            TextField("", text: $email)
                .frame(width: 335, height: 46)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black,lineWidth: 1)
                }
            HStack {
                Text("Password")
                    .frame(width: 91,height: 35)
                    .foregroundStyle(Color(.systemGray))
                    .padding(.leading,30)
                Spacer()
            }
            SecureField("",text: $password)
                .frame(width: 335, height: 46)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black,lineWidth: 1)
            }
            
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .frame(width: 150,height: 15)
                        .padding(.trailing,30)
                        .foregroundStyle(Color(.systemGray))
                }
            }.padding(.bottom,15)
            Button {
                
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .frame(width: 334, height: 57)
                    .background(Color(red: 0.0, green: 0.184, blue: 0.588))
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)

            }
        }
    }
}

#Preview {
    SignInView()
}
