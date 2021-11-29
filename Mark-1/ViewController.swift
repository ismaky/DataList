//
//  ViewController.swift
//  Mark-1
//
//  Created by Ismael on 03/08/21.
//

import UIKit

struct MovieResponse: Decodable {
    
    let results: [Movie]
}

struct Movie: Decodable{
    
    let id: Int
    let title: String
    let path: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double?
}
