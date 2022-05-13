//
//  ContentView.swift
//  Memories
//
//  Created by Aparnna Hariharan on 2022-05-08.
//

import SwiftUI

struct ContentView: View {
//    @State private var date = Date()
    @State var isPresented: Bool = false
    @State var description: String = ""
    @State var title: String = ""
//    @State var index: Int = 0
//    @State var date: Date
    var body: some View {
        VStack {
            VStack {
                Text("Memories")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)

//                Text("\(title)")
//                    .padding([.top, .leading, .bottom])
                
//                Text("\(Note.title.joined(separator: ","))")
//                    .padding([.top, .leading, .bottom])
                let index = Note.title.count
                ForEach(0..<index) { i in
                    Text("\(Note.title[i])")
                        .font(.title)
                    Text("\(Note.des[i])")
                        .font(.body)
                }
                    
//                Text("\(Note.des.joined(separator: ","))")
//                    .padding([.leading, .bottom, .trailing])
            }
            Button(action: {
                isPresented.toggle()
            }, label: {
                HStack {
                    Text("New Entry")
                        .padding(.all)
                    Image(systemName: "arrow.right")
                }
                .fullScreenCover(isPresented: $isPresented, content: {
                    NotesView()
                })
            })
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
