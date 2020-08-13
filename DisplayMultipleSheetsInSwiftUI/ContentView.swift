//
//  ContentView.swift
//  DisplayMultipleSheetsInSwiftUI
//
//  Created by ramil on 13.08.2020.
//

import SwiftUI

enum ActiveSheet {
    case first
    case second
}

struct ContentView: View {
    
    //@State private var showFirstSheet: Bool = false
    //@State private var showSecondSheet: Bool = false
    
    @State private var isPresented: Bool = false
    @State private var activeSheet: ActiveSheet = .first
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isPresented = true
                    self.activeSheet = .first
                }, label: {
                    Text("Show First Sheet")
                })
                
                Button(action: {
                    self.isPresented = true
                    self.activeSheet = .second
                }, label: {
                    Text("Show Second Sheet")
                })
            }
            .sheet(isPresented: $isPresented) {
                if self.activeSheet == .first {
                    Text("First Sheet")
                } else if self.activeSheet == .second {
                    Text("Second Sheet")
                }
            }
            .navigationTitle("Multiple Sheets")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
