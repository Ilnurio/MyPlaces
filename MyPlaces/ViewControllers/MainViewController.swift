//
//  ViewController.swift
//  MyPlaces
//
//  Created by Ilnur on 17.11.2023.
//

import UIKit

let restaurantNames = [
    "Burger Heroes", "Kitchen", "Dastarhan",
    "Yakitoria", "KFC", "Tasty and that's it",
    "Pizza Hot", "Dominos", "Chaihana"
]

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

     // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurantNames[indexPath.row])
        
        return cell
    }

}

