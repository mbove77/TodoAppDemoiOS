//
//  TaskRow.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "checkmark.circle" : "circle")
            Text(task)
                .strikethrough(completed)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Colgar ropa", completed: true)
    }
}
