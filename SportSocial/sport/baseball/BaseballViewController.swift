//
//  BaseballViewController.swift
//  SportSocial
//
//  Created by elizabeth on 2/11/18.
//  Copyright © 2018 elizabeth. All rights reserved.
//

import UIKit

class BaseballViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let locations = ["Oriole Park", "Watersedge Park",
                     "Quincy Park", "Gafield Park", "Rosedale Park", "Washington Park"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! BaseballTableViewCell
        cell.parkName.text = locations[indexPath.row]
        
        return cell
    }

}
