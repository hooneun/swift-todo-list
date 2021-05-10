//
//  TaskListView.swift
//  todo-list
//
//  Created by 김훈 on 2021/05/10.
//

import SwiftUI

struct TaskListView: View {
    var tasks :[Task] = testDataTasks
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List{
                    ForEach (self.tasks) { task in
                        TaskCell(task: task)
                    }
                    .onDelete { indexSet in
                        
                    }
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("New Task")
                    }
                }
                .padding()
                .accentColor(.red)
            }
            .navigationTitle("Task")
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

struct TaskCell: View {
    var task: Task
    
    var body: some View {
        HStack{
            Image(systemName: task.completed ? "checkmark.cicle.fill" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(task.title)
        }
    }
}
