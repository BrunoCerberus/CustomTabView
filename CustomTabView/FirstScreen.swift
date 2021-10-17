//
//  FirstScreen.swift
//  CustomTabView
//
//  Created by bruno on 11/09/21.
//

import SwiftUI

struct FirstScreen: View {
    var body: some View {
        VStack {
            NavigationLink("Click here", destination: Text("Final Screen"))
                        .font(.system(size:20))
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
