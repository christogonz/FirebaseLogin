//
//  ContentView.swift
//  FirebaseLogin
//
//  Created by Christopher Gonzalez on 2024-06-26.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State  var email: String = ""
    @State  var password: String = ""
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
            TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                login()
            }, label: {
                Text("Sign In")
            })
        }
        .padding(.horizontal, 50)
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Succes Login!!!")
            }
        }
    }
    
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark
        )
}
