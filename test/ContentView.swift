//
//  ContentView.swift
//  test
//
//  Created by Laurent B on 28/10/2019.
//  Copyright © 2019 Laurent B. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var loginViewWidth = UIScreen.main.bounds.width / 1.3
    
    var body: some View {
        ZStack{
            Image("LoginBackground")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            ZStack(alignment: .bottom) {
                RoundedRectangle(cornerRadius: 30).foregroundColor(.white)
                    
                Image("chick")
                    .resizable()
                    
                    .aspectRatio(contentMode: .fit)
                
            }.frame(width: loginViewWidth, height: loginViewWidth * 1.7)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
