//
//  ContentView.swift
//  W01_Mobcom
//
//  Created by student on 11/09/25.
//

import SwiftUI

struct Student {
    var name: String
    var year: Int
    func display() -> String {
        "\(name), \(year)"
    }
}

enum UserStatus {case offline, online, busy}


struct ContentView: View {
    let userName = "Sherin"
    let scores = [89, 92, 76]
    let student = Student(name: "Sherin", year: 3)
    let status: UserStatus = .online
    
    var badge: String {
        scores.allSatisfy {$0 >= 85} ? "✅" : "❌"
    }
    
    var body: some View {
//        VStack(spacing:10) {
//            Text("Hello, \(userName)")
//                .font(.title)
//            
//            Text("Student: \(student.display())")
//            
//            Text("Status: \(status == .online ? "Online" : "Offline")")
//            
//            Text("Badge: \(badge)")
//        }
        
        
        // Terdapat 3 Stack: VStack (Vertikal), HStack (Horizontal), ZStack (menumpuk satu sama lain)
        VStack (alignment: .center, spacing: 12){
            ////        HStack (spacing: 16){
            //            Text("Hello, world!")
            //                .font(.largeTitle)
            //                .fontWeight(.bold)
            //                .padding(.horizontal)
            //
            //            Text("Declarative UI | Live Preview | SwiftUI Cool!")
            //                .multilineTextAlignment(.center)
            //                .padding()
            //                .font(.headline)
            //                .background(.ultraThinMaterial)
            //                .clipShape(RoundedRectangle(cornerRadius: 16))
            //
            //            Image(systemName: "sparkles")
            //                .imageScale(.large)
            ////                .foregroundColor(.blue)
            //                .foregroundStyle(
            //                    .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing)
            //                )
            //
            //                .font(.system(size: 100))
            //                .padding()
            //                .overlay(content: {
            //                    Circle().strokeBorder(.gray.opacity(0.3),lineWidth: 3).shadow(radius: 8)
            //                })
            //
            //            Text("Hanya Bisa Tertawa😂")
            //                .font(.caption)
            //                .fontWeight(.bold)
            //                .foregroundColor(.pink)
            //
            //            // Bisa terdapat stack baru di dalam stack
            //            // Sebuah objek akan mulai dari kanan
            //            HStack(spacing: 12) {
            //                Text("Ter")
            //                Text("ser")
            //                Text("ah")
            //            }
            //
            //            VStack(spacing: 12) {
            //                Text("ter")
            //                Text("ah")
            //            }
            //
            //            // buat 3 buah VStack di dalam setiap VStack ada emoji yang berbeda
            //            VStack(spacing: 12) {
            //                Text("Saya")
            //                    .font(.largeTitle)
            //                Text("Kuat")
            //                    .font(.largeTitle)
            //                Text("😉")
            //                    .font(.system(size: 100))
            //            }
            //            VStack(spacing: 12) {
            //                Text("Saya")
            //                    .font(.largeTitle)
            //                Text("😭")
            //                    .font(.system(size: 100))
            //                Text("Kuat")
            //                    .font(.largeTitle)
            //            }
            //            VStack(spacing: 12) {
            //                Text("😄")
            //                    .font(.system(size: 100))
            //                Text("Saya")
            //                    .font(.largeTitle)
            //                Text("Kuat")
            //                    .font(.largeTitle)
            
            // class assignment 01
            Image("Photo on 11-09-25 at 13.17")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .shadow(color:.red,radius: 20)
                .overlay(content: {
                    Circle().strokeBorder(.red.opacity(12),lineWidth: 1.5)          })
            
            HStack() {
                Text("Hello, I'm")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                
                Text("Sherin Yonatan")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundStyle(
                        .linearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottomTrailing)
                                    )
            }
            
            Text("My Age is 19")
                .font(.system(size: 20))
                .fontWeight(.light)
                .padding()
                .background(Color.green.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text("😉👩🏻‍💻🤪")
                .font(.system(size: 80))
            
            
        }
        
    }
    
}
    
    

    
    // Buat Sendiri
    let name = "Sherin"
    var age = 19
    func greet() {
        print("Hello, \(name), age \(age)")
    }


#Preview {
    ContentView()
}
