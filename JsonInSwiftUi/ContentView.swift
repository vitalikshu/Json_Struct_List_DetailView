//
//  ContentView.swift
//  JsonInSwiftUi
//
//  Created by PROG on 04/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var posts: [Post] = []
    var body: some View {
        
        NavigationView{
            
            List (posts) { post in
                VStack(alignment: .leading) {
                    NavigationLink(destination: DetailView(posts: post)) {
                        VStack(alignment: .leading){
                            Text(post.title.capitalizingFirstLetter()).font(.title3).multilineTextAlignment(.leading)
                            Divider()
                            Text(post.body.capitalizingFirstLetter()).font(.headline).foregroundColor(.gray
                            ).multilineTextAlignment(.leading)
                        }
                    }
                }
            }.navigationTitle("Список элементов")
        }
        .onAppear {
            apiCall().getData { (posts) in
                self.posts = posts
            }
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
