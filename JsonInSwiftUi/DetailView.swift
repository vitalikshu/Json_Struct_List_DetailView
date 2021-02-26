//
//  DetailView.swift
//  JsonInSwiftUi
//
//  Created by PROG on 16/02/2021.
//

import SwiftUI

struct DetailView: View {
    
    @State var posts: Post

    var body: some View {
        HStack{
        Text(posts.title.capitalizingFirstLetter())
            .multilineTextAlignment(.leading)
            .padding()
        }
        Spacer()

    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(posts: Post][0])
//    }
//}
