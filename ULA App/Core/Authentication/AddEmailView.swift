//
//  AddEmailView.swift
//  ULA App
//
//  Created by Jarek  on 06/05/2024.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            // titlle text
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .foregroundColor(Color.tealGreen)
            
            // description text
            Text("You'll use this email to sign in in to your account")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                .foregroundColor(Color.tealGreen)
            
            
            // enter email textField
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                .padding(.top)
            
            // next button
            Button {
                print("Next")
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 44)
                    .foregroundColor(.white)
                    .background(Color.tealGreen)
                    .cornerRadius(10)
                
            }
            .padding(.vertical)
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .foregroundColor(Color.tealGreen)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    AddEmailView()
}
