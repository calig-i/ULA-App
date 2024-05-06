//
//  LoginView.swift
//  ULA App
//
//  Created by Jarek  on 30/04/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            
            // logo image
            VStack {
                Spacer()
                // logo image
                Image("ULALoginScreen")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 220)
                    .padding()
                
                // text fields
                VStack {
                    TextField("Enter your email", text: $email )
                        .autocapitalization(.none)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                // log in button
                Button {
                    print("Login")
                } label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .foregroundColor(.white)
                        .background(Color.tealGreen)
                        .cornerRadius(10)
                    
                }
                
                // forgot password button
                .padding(.vertical)
                
                Button {
                    print("Forgot passsword")
                } label: {
                    Text("Forgot password?")
                        .foregroundColor(Color.tealGreen)
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                // divider "or"
                HStack {
                    Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                .padding()
                
                
                /// login by facebook and google buttons
                HStack {
                    Spacer()
                    HStack {
                        Image("facebookLogo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Button(action:  {
                            self.showingAlert = true
                        }) {
                            Text("Log in with Facebook")
                                .foregroundColor(Color.tealGreen)
                                .font(.footnote)
                        }
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Feature Unavailable"),
                              message: Text("This feature is temporarily unavailable. Please log in via email"),
                              dismissButton: .default(Text("Got it!"))
                        )
                    }

                    Spacer()
                    
                    HStack {
                        Image("googleLogo")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Button(action:  {
                            self.showingAlert = true
                        }) {
                            Text("Log in with Google")
                                .foregroundColor(Color.tealGreen)
                                .font(.footnote)
                        }
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Feature Unavailable"),
                              message: Text("This feature is temporarily unavailable. Please log in via email"),
                              dismissButton: .default(Text("Got it!"))
                        )
                    }
                    
                    Spacer()
                }
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.tealGreen)
                Spacer()
                
            }
            .padding(.top, 8)
            
            Spacer()
            
            Divider()
            
            // sign up button with navigation link
            NavigationLink {
                Text("Sign up")
            } label: {
                HStack(spacing: 3) {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(Color.tealGreen)
            }
            .padding(.vertical, 16)

        }
        
    }
}

#Preview {
    LoginView()
}
