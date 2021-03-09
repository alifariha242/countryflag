//
//  ViewController.swift
//  CountryFlags
//
//  Created by Fariha Mohamed on 3/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryflagtableview: UITableView!
    
    var items:[String] = ["blue", "blue", "blue", "blue", "blue", "green","green", "green","green", "green" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countryflagtableview.register(UINib(nibName: "GreenTableViewCell" , bundle: nil), forCellReuseIdentifier: "Greencellidentifier")
        
        countryflagtableview.register(UINib(nibName: "BlueTableViewCell", bundle: nil), forCellReuseIdentifier: "Bluecellidentifier")
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.item]
        if item == "blue" {
            guard  let cell = tableView.dequeueReusableCell(withIdentifier: "Bluecellidentifier", for: indexPath) as?
                    BlueTableViewCell else {
                return UITableViewCell()
            }
            cell.label.text = "This is Blue"
            return cell
        }
        else {
            guard  let cell = tableView.dequeueReusableCell(withIdentifier: "Greencellidentifier", for: indexPath) as?
                    GreenTableViewCell else {
                return UITableViewCell()
            }
            cell.label.text = "This is Green"
            return cell
        }
    }
}

