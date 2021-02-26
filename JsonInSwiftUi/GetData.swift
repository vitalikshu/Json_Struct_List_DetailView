//
//  GetData.swift
//  JsonInSwiftUi
//
//  Created by PROG on 04/02/2021.
//

import UIKit

struct Post: Decodable,Identifiable {

    let id: Int
    let title: String
    let body: String
    let userId: Int
}



//somewhere in viewDidLoad

class apiCall {
    func getData(completion:@escaping ([Post]) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            print(posts)

            DispatchQueue.main.async {
                completion(posts)
            }

        }
        .resume()
    }
    

}

