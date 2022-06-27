//
//  TasksView.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import SwiftUI

struct TasksView: View {
    @EnvironmentObject var realmManger: RealManager
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 20)
            Text("My Tasks")
                .font(.title3)
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            List {
                if realmManger.tasks.count > 0 {
                    ForEach(realmManger.tasks, id: \.id) {
                        task in
                        if !task.isInvalidated {
                            TaskRow(task: task.title, completed: task.completed)
                                .onTapGesture {
                                    realmManger.updateTask(id: task.id, completed: !task.completed)
                                }
                                .swipeActions(edge: .trailing) {
                                    Button(role: .destructive) {
                                        realmManger.deleteTask(id: task.id)
                                    } label: {
                                            Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                    }
                } else {
                    Text("Write some task to do.")
                        .bold()
                        .padding()
                }
            }
            .onAppear {
                UITableView.appearance().contentInset.top = -35
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealManager())
    }
}
