//
//  ContentView.swift
//  DateFormats
//
//  Created by Sachin Daingade on 05/11/23.
//

import SwiftUI
let now = Date()
let agreementText = """
What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
"""
struct ContentView: View {
    @State private var isAgreed = false
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 10) {
                
                GroupBox(label: Label("Legal Agreement",  systemImage: ("building.columns"))) {
                    ScrollView(.vertical,showsIndicators: true) {
                        Text(agreementText)
                            .font(.footnote)
                    }
                    Toggle(isOn: $isAgreed) {
                        Text("I agree to the above terms")
                    }
                }
                
                
                
                ScrollView (.vertical){
                    VStack (alignment: .leading, spacing: 10) {
                        // 03/09/2023, 3:16 PM
                        Text(now.formatted())
                        // 3:17:05 PM
                        Text(now.formatted(date:.omitted, time: .standard))
                        // Mar 9, 2023 at 3:15:26 PM CST
                        Text(now.formatted(date:.abbreviated, time: .complete))
                        // March 9, 2023
                        Text(now.formatted(date:.long, time:.omitted))
                        // 3/9/2023
                        Text(now.formatted(date:.numeric, time: .omitted))
                        // 2023-03-09T21:18:05Z
                        Text(now.formatted(.iso8601))
                        // 9
                        Text(now, format: Date.FormatStyle().day())
                        // Mar 9
                        Text(now, format: Date.FormatStyle().day() .month())
                        // 03/9
                        Text(now, format: Date.FormatStyle().day().month(.twoDigits))
                        // Mar 9, 2023
                        Text(now, format: Date.FormatStyle().day() .month() .year())
                    }
                }
                
                .font(.title)
                .padding()
            }
            .navigationTitle("Dates")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
