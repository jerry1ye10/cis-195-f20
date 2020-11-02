//
//  ViewController.swift
//  lecture6-demoapis
//
//  Created by Jerry Ye on 10/30/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

struct APIData: Codable {
    let data: [Park]
}

struct Park: Codable{
    let fullName: String
    let description: String
}

class ViewController: UITableViewController {
    
    var parks = [Park]()
    let endpoint: String = "https://developer.nps.gov/api/v1/parks?limit=30&api_key=4lECn1aTXgLDHp0nxI4XwiVNpGFQgSxCNO35ZTD7"

    override func viewDidLoad() {
        super.viewDidLoad()
        makeAPICall()
        print(self.parks)
        // Do any additional setup after loading the view.
    }
    
    private func makeAPICall(){
        let url = URL(string: endpoint)!
        let urlRequest = URLRequest(url: url)
        
        let task = URLSession.shared.dataTask(with: urlRequest){ (data, response, error) in
            guard let data = data, error == nil else{
                print("Error")
                return
            }
            if let APIResponse = try? JSONDecoder().decode(APIData.self, from: data){
                DispatchQueue.main.async{
                self.parks = APIResponse.data
                self.tableView.reloadData()
                }
            }
        }
        task.resume()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.parks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "park", for: indexPath)
        cell.textLabel?.text = parks[indexPath.row].fullName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.parks)
    }
    


}

