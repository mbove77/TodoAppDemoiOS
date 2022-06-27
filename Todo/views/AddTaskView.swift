//
//  AddTaskView.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManger: RealManager
    @State private var tittle: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter yor task here", text: $tittle)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if tittle != "" {
                    realmManger.addTask(title: tittle)
                }
                dismiss()
            } label: {
                Text("Add task")
            }
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(.green)
            .cornerRadius(30, antialiased: true)
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealManager())
    }
}
