//
//  DemoURL.swift
//  Cassini
//
//  Created by Alexander Rozhdestvenskiy on 14.09.2020.
//  Copyright © 2020 AlexRozh. All rights reserved.
//

import Foundation

struct DemoURL {
    static let stanford = URL(string: "https://www-media.stanford.edu/wp-content/uploads/2017/03/24182714/about_landing-1.jpg")
    static let juno = URL(string: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/pia22946-16.jpg")
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = ["Cassini" : "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/pia17216-1041.jpg",
                              "Earth" : "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/187_1003705_americas_dxm.png",
                              "Saturn" : "https://solarsystem.nasa.gov/system/resources/detail_files/2490_stsci-h-p1943a-f_1200.jpg"
        ]
        
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}

