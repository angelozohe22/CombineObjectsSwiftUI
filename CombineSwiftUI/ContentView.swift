//
//  ContentView.swift
//  CombineSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 21/02/23.
//

import SwiftUI

// Observed Object
struct ContentView: View {
    
    @ObservedObject var model: Model = Model()
    @State private var title: String = ""
    
    var body: some View {
        VStack(spacing: 16) {
            Text(title)
                .font(.title)
            
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Contador")
                    .font(.title)
                    .foregroundColor(.cyan)
            }
            SecondView()
            ThirdView()
            Button {
                title = "Nuevo titlo"
            } label: {
                Text("Colocar titulo")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}

struct SecondView: View {
    
    @ObservedObject var model: Model = Model()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Contador")
                    .font(.title)
                    .foregroundColor(.cyan)
            }
        }
        .padding()
    }
}

struct ThirdView: View {
    
    @ObservedObject var model: Model = Model()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Contador")
                    .font(.title)
                    .foregroundColor(.cyan)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
