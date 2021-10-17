//
//  ContentView.swift
//  CustomTabView
//
//  Created by bruno on 11/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var tabIdx: Tab = .house
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Spacer()
                if tabIdx == .house {
                    FirstScreen()
                } else if tabIdx == .heart {
                    Text("Second Screen")
                }
                Spacer(minLength: 0)
                TabView(tabIdx: self.$tabIdx)
            }
            .ignoresSafeArea()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
