//
//  ContentView.swift
//  TH02-Mobcom-SherinYonatan
//
//  Created by student on 22/09/25.
//

import SwiftUI

// Sherin Alvinia Yonatan - 0706022310013
struct ContentView: View {
    
    @State private var addYourList: String = ""
    @State private var progressScore = 30
    @State private var list1 = false;
    @State private var list2 = false;
    @State private var list3 = false;
    
    
    private func progressCard(progress:Int)
    -> some View {
        VStack {
            Text("Your Progress")
                .font(.headline)
                .padding(.bottom, 4)
                    
            ProgressView(value: Double(progress), total: 100)
                .frame(height: 10)
                .cornerRadius(4)
                    
            Text("\(progress)/100%")
                .foregroundStyle(.secondary)
            }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            HStack {
                Text("To Do List")
                    .font(.system(size: 20))
                
                Spacer()
                
                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Sherin Yonatan")
            }
            
            HStack {
                progressCard(progress: progressScore)
                
                VStack(alignment: .leading, spacing: 10) {
                           Text("Total List")
                               .font(.headline)
                               
                           Text("3 items")
                               .font(.title2)
                               .foregroundColor(.orange)
                               .padding(.bottom, 12)
                    
                       }
                       .padding()
                       .frame(maxWidth: .infinity)
                       .background(Color.green.opacity(0.1))
                       .cornerRadius(8)
            }
           
            HStack {
                TextField("Add Your List", text: $addYourList)
                    .textFieldStyle(.roundedBorder)
                
                Button("Add List"){
                    
                }
                    .buttonStyle(.borderedProminent)
            }
            
            List{
                HStack {
                    Text("Kerja Data Mining")
                    
                    Toggle("", isOn: $list1)
                }
                HStack {
                    Text("Main Valorant")
                    
                    Toggle("", isOn: $list2)
                }
                HStack {
                    Text("Berdoa")
                    
                    Toggle("", isOn: $list3)
                }
            }
            .listStyle(PlainListStyle())
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
