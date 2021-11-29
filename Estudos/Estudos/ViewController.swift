//
//  ViewController.swift
//  Estudos
//
//  Created by Ismael on 21/10/21.
//

import UIKit

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let Body: String
    
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRequest()
        // Do any additional setup after loading the view.
    }

    private func makeRequest() {
        let url = URL (string:
                        "https://jsonplaceholder.typicode.com/posts")!
        
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            print("response: \(String(describing: response))")
            print("error: \(String(describing: error))")
            
            guard let responseData = data else { return }
            
            do {
            let posts = try JSONDecoder().decode([Post].self, from:
                responseData)
            print ("obects posts:\(posts)")
            
            } catch let error {
            print("error: \(error)")
        }
          
        task.resume()
        
    }
    
}

