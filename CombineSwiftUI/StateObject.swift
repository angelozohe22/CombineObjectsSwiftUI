//
//  StateObject.swift
//  CombineSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 21/02/23.
//

import SwiftUI

struct StateObjectView: View {
    
    @ObservedObject private var model: Model = Model()
    
    var body: some View {
        VStack {
            Spacer()
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Aumentar contador 1")
            }
            Spacer()
            StateObject2View()
            Spacer()
            StateObject3View()
            Spacer()
        }
    }
    
}

struct StateObject2View: View {
    
    @ObservedObject private var model: Model = Model()
    
    var body: some View {
        VStack {
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Aumentar contador 2")
            }
        }
    }
    
}

struct StateObject3View: View {
    
    @StateObject private var model: Model = Model()
    
    var body: some View {
        VStack {
            Text("Contador: \(model.count)")
            Button {
                model.count += 1
            } label: {
                Text("Aumentar contador 3")
            }
        }
    }
    
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
