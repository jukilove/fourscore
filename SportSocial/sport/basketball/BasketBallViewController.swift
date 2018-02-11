//
//  BasketBallViewController.swift
//  SportSocial
//
//  Created by elizabeth on 2/10/18.
//  Copyright © 2018 elizabeth. All rights reserved.
//

import UIKit

class BasketBallViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let locations = ["Harrison Playground", " Riverside Park",
                     "Battery Lane", "Rocky Park", "Rosedale Park", "Washington Park"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()
    }

   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return locations.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! BasketballTableViewCell
        cell.parkName.text = locations[indexPath.row]
        
        return cell
    }

}
