//
//  TabView.swift
//  CustomTabView
//
//  Created by bruno on 11/09/21.
//

import SwiftUI

enum Tab {
    case house, heart
}

struct TabView: View {
    @Binding var tabIdx: Tab
    
    var body: some View {
        HStack {
            Group {
                Spacer()
                
                Button (action: {
                    self.tabIdx = .house
                }) {
                    VStack{
                        Image(systemName: "house.fill")
                        Text("House")
                            .font(.system(size: 10))

                    }
                }
                .foregroundColor(self.tabIdx == .house ? .blue : .secondary)
                
                Spacer()
                
                Button (action: {
                    self.tabIdx = .heart
                }) {
                    VStack{
                        Image(systemName: "heart.fill")
                        Text("Heart")
                            .font(.system(size: 10))

                    }
                }
                .foregroundColor(self.tabIdx == .heart ? .blue : .secondary)
                
                Spacer()
            }
        }
        .padding(.bottom, 30)
        .padding(.top, 10)
        .background(Color(red: 0.1, green: 0.1, blue: 0.1))
        .font(.system(size: 30))
        .frame(height: 80)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(tabIdx: .constant(.house))
    }
}
