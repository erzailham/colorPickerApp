//
//  ChatViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 27/10/22.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let chats = [Chat(name: "Jajang", chat: "lorem ipsum dolor sat set sat set..."),
                 Chat(name: "Dudung", chat: "lorem ipsum dolor sat set sat set..."),
                 Chat(name: "Maman", chat: "lorem ipsum dolor sat set sat set..."),
                 Chat(name: "Toha", chat: "lorem ipsum dolor sat set sat set...")]
    
    @IBOutlet weak var chatTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        chatTableView.delegate = self
        chatTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ChatTableViewCell
        
        let data = chats[indexPath.row]
        
        cell.nameLabel.text = data.name
        cell.chatLabel.text = data.chat
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
