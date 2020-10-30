//
//  ViewController.swift
//  lecture5-demo
//
//  Created by Jerry Ye on 10/29/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var parks = [Park]()
    let endpoint: String = "https://developer.nps.gov/api/v1/parks?limit=30&api_key=4lECn1aTXgLDHp0nxI4XwiVNpGFQgSxCNO35ZTD7"


    override func viewDidLoad() {
        super.viewDidLoad()
        makeAPIRequest()
        // Do any additional setup after loading the view.
    }
    
    private func makeAPIRequest() {
        // URLSession code
        let url = URL(string: endpoint)!
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Error: API request failed...")
                return
            }
            if let APIResponse = try? JSONDecoder().decode(APIResponse.self, from: data) {
                DispatchQueue.main.async {
                    self.parks = APIResponse.data
                    self.tableView.reloadData()
                }
                    
                }
            }
        
        
        
        // Actually run the URLSession
        task.resume()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Prototype", for: indexPath)
        cell.textLabel?.text = parks[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parks.count
    }


}

