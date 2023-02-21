//
//  EnvironmentObject.swift
//  CombineSwiftUI
//
//  Created by Luis Angel Inga Mendoza on 21/02/23.
//

import SwiftUI

struct EnvironmentObjectView: View {
    
    @EnvironmentObject var model: Model
    
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
            EnvironmentObject2View()
            Spacer()
            EnvironmentObject3View()
            Spacer()
        }
    }
    
}

struct EnvironmentObject2View: View {
    
    @EnvironmentObject var model: Model
    
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

struct EnvironmentObject3View: View {
    
    @EnvironmentObject var model: Model
    
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

struct EnvironmentObjectView_Preview: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
    }
}
