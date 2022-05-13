//
//  NotesView.swift
//  Memories
//
//  Created by Aparnna Hariharan on 2022-05-12.
//

import SwiftUI

struct NotesView: View {
    @State var isPresented: Bool = false
    @State var description: String = ""
    @State var title: String = ""
    var body: some View {
        VStack(spacing: 30) {
            TextField("Enter Tittle", text: $title)
                .padding([.top, .leading])
        Text("Description")
            .multilineTextAlignment(.leading)
            TextEditor(text: $description)
            Button(action: {
                isPresented.toggle()
                if (Note.index == 0) {
                    Note.des[Note.index] = (description)
                    Note.title[Note.index] = (title)
                    Note.index += 1
                }
                else {
                    Note.des.append(description)
                    Note.title.append(title)
                    Note.index += 1
                }
            }, label: {
                HStack {
                    Image(systemName: "arrow.left")
                    Text("Back")
                        .padding(.all)
                }
                .fullScreenCover(isPresented: $isPresented, content: {
                    ContentView()
                })
            })
        }
        
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}


