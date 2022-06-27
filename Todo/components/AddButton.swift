//
//  AddButton.swift
//  Todo
//
//  Created by Resonant Sports on 18/12/2021.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack {
           Circle()
                .frame(width: 50)
                .foregroundColor(.green)
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
