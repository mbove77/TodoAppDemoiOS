//
//  Task.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
