//
//  ContentView.swift
//  DateFormats
//
//  Created by Sachin Daingade on 05/11/23.
//

import SwiftUI
let now = Date()
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack (alignment: .leading, spacing: 10){
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
            .font(.title)
            .padding()
        }
        .navigationTitle("Dates")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
