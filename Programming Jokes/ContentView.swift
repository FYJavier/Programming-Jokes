//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Yuna on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear {
            getJokes()
        }
    }
    
    func getJokes() {
       let apiKey = "?rapidapi-key=c3a03858eemsh44e25a59e7f8d85p1bd4f1jsn25e033ef83d0"
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}
