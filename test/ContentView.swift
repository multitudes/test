//
//  ContentView.swift
//  test
//
//  Created by Laurent B on 28/10/2019.
//  Copyright © 2019 Laurent B. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var enteredNumber = ""
    var enteredNumberFormatted: Double {
        return (Double(enteredNumber) ?? 0) / 100
    }
    var body: some View {
        
        Form {
            Section {
                ZStack(alignment: .leading) {
                    TextField("", text: $enteredNumber)
                        .keyboardType(.numberPad).foregroundColor(.clear)
                        .textFieldStyle(PlainTextFieldStyle())
                        .disableAutocorrection(true)
                        .accentColor(.clear)
                    Text("\(enteredNumberFormatted, specifier: "%.2f")")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
