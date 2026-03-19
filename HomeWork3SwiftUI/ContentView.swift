//
//  ContentView.swift
//  HomeWork3SwiftUI
//
//  Created by Leonardo Madrigal on 3/19/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            LandingPage()
        }
    }
}


struct LandingPage: View{
    var body: some View{
        VStack{
            HStack{
                Image(systemName: "star")
                Text("SLOPE").font(.headline).bold()
                Spacer()
            }
        }.padding(40)
        Spacer()
        
        Image(systemName: "person.crop.circle")
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .foregroundStyle(.gray)
        
        Text("Hello !")
            .font(.largeTitle)
            .bold()
        
        Text("Best place to write life stories and\nshare your journey experiences")
            .foregroundStyle(.gray)
        Spacer()
        Spacer()

        
        NavigationLink{
            LoginScreen()
        } label: {
            Text("LOGIN")
                .fontWeight(.bold)
                .frame(width: 250, height: 50)
                .background(.blue)
                .cornerRadius(10)
                .foregroundStyle(.white)
        }
        NavigationLink{
            LoginScreen()
        } label: {
            Text("SIGNUP")
                .fontWeight(.bold)
                .frame(width: 250, height: 50)
                .background(.white)
                .foregroundStyle(.blue)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.blue, lineWidth: 1)
                )
        }
        Spacer()
        Spacer()


    }
}

struct LoginScreen: View {
    
    @State var emailId = ""
    @State var passwordId = ""
    
    var body: some View {
        VStack{
            Text("Welcome !")
                .font(.largeTitle)
                .bold()
            Text("Sign in to continue !")
                .font(.title2)
                .bold()
                .foregroundStyle(.gray)
            
            Spacer()
            
            TextField("Email", text: $emailId)
            Rectangle()
                .frame(height:1)
                .foregroundStyle(.gray)
                .padding(.bottom, 10)


            SecureField("Password", text: $passwordId)
            Rectangle()
                .frame(height:1)
                .foregroundStyle(.gray)
                .padding(.bottom, 40)
            
            NavigationLink{
                EmptyView()
            } label: {
                Text("LOGIN")
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                    .padding(.bottom,1)
            }
            NavigationLink{
                EmptyView()
            } label: {
                Text("Forgot Password?")
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
            }
            Spacer()
            
            HStack{
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(width: .infinity,height: 1)
                Text("or")
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(width: .infinity,height: 1)
            }
            Spacer()
            
            Text("Social Media Login")
                .foregroundStyle(.gray)
                .padding(.bottom,10)
            
            HStack{
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
            }.padding(.bottom,20)
            
            HStack{
                Text("Don't have an account?")
                NavigationLink{
                    EmptyView()
                } label: {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                }
                
            }
            
        }.padding(40)
    }
}

struct CreateAccountScreen: View {
    
    @State var nameId = ""
    @State var emailId = ""
    @State var passwordId = ""
    
    var body: some View {
        VStack{
            Text("Hi !")
                .font(.largeTitle)
                .bold()
            Text("Create a new account")
                .font(.title2)
                .bold()
                .foregroundStyle(.gray)
            
            Spacer()
            
            TextField("Name", text: $nameId)
            Rectangle()
                .frame(height:1)
                .foregroundStyle(.gray)
                .padding(.bottom, 10)
            
            TextField("Email", text: $emailId)
            Rectangle()
                .frame(height:1)
                .foregroundStyle(.gray)
                .padding(.bottom, 10)


            SecureField("Password", text: $passwordId)
            Rectangle()
                .frame(height:1)
                .foregroundStyle(.gray)
                .padding(.bottom, 40)
            
            NavigationLink{
                EmptyView()
            } label: {
                Text("SIGN UP")
                    .fontWeight(.bold)
                    .frame(width: 250, height: 50)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                    .padding(.bottom,1)
            }

            Spacer()
            
            HStack{
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(width: .infinity,height: 1)
                Text("or")
                Rectangle()
                    .foregroundStyle(.gray)
                    .frame(width: .infinity,height: 1)
            }
            Spacer()
            
            Text("Social Media Signup")
                .foregroundStyle(.gray)
                .padding(.bottom,10)
            
            HStack{
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
            }.padding(.bottom,20)
            
            HStack{
                Text("Already have an account?")
                NavigationLink{
                    EmptyView()
                } label: {
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                }
                
            }
            
        }.padding(40)
    }
}


#Preview {
    CreateAccountScreen()
}
