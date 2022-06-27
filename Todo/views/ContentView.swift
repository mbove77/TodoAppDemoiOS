//
//  ContentView.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealManager()
    @State private var showAddTaskView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            AddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
