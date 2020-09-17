//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Alexander Rozhdestvenskiy on 17.09.2020.
//  Copyright © 2020 AlexRozh. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.content as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }
}

    // MARK: - Extension

extension UIViewController {
    var content: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
