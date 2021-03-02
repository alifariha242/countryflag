//
//  ViewController.swift
//  CountryFlags
//
//  Created by Fariha Mohamed on 3/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryflagtableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecellidentifier", for: indexPath)
        return cell
    }
}

