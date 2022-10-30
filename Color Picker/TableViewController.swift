//
//  TableViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 26/10/22.
//

import UIKit

class TableViewController: UITableViewController {
    
    let classA = ["Jajang", "Dudung", "Nana", "Wahid", "Jajang", "Dudung", "Nana", "Wahid", "Jajang", "Dudung", "Nana", "Wahid", "Jajang", "Dudung", "Nana", "Wahid", "Jajang", "Dudung", "Nana", "Wahid", "Jajang", "Dudung", "Nana", "Wahid"]
    let classB = ["Wawan", "Atep"]

    override func viewDidLoad() {
        super.viewDidLoad()

        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 50))
        self.tableView.tableHeaderView = searchBar
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header \(section)"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return classA.count
        case 1:
            return classB.count
        default:
            return 0
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customeCell", for: indexPath) as? CustomeTableViewCell else {
            return UITableViewCell(frame: .zero)
        }
        
        switch indexPath.section {
        case 0:
            let name = classA[indexPath.row]
            
            cell.titleLabel.text = name
            cell.profileImageView.image = UIImage(named: "profile")
        case 1:
            let name = classB[indexPath.row]
            
            cell.titleLabel.text = name
            cell.profileImageView.image = UIImage(named: "profile")
        default:
            break
        }
        
        return cell
    }

}
