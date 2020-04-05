//
//  MenuTableViewController.swift
//  WebView
//
//  Created by user163948 on 4/5/20.
//  Copyright © 2020 lecosas. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var websites = ["apple.com", "cuecastore.com.br", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Websites"
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "websiteCell", for: indexPath)

        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "websitePage") as? ViewController
        vc?.initialWebsite = websites[indexPath.row]
        vc?.websites = websites
        navigationController?.pushViewController(vc!, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
