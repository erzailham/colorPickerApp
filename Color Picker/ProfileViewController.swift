//
//  ProfileViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 02/11/22.
//

import UIKit
import Alamofire
import SwiftyJSON
import SDWebImage

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var activationSwitch: UISwitch!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    let defaults = UserDefaults.standard
    
    var pokeData = Pokemon()
    
    var name: String = "" {
        didSet {
            nameLabel.text = name
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundImage()
        setupData()
        getData()
    }
    
    func setupData() {
        nameLabel.text = self.pokeData.name
        heightTextField.text = "\(self.pokeData.height ?? 0)"
        weightTextField.text = "\(self.pokeData.weight ?? 0)"
        
        if let url = URL(string: self.pokeData.imageUrl ?? "") {
            profileImageView.sd_setImage(with: url)
        }
        
        activationSwitch.isOn = self.pokeData.isActive ?? false
    }
    
    func getData() {
        
        AF.request("https://pokeapi.co/api/v2/pokemon/pikachu", method: .get).responseDecodable(of: Pokemon.self) { response in
            switch response.result {
            case .success(let result):
                self.pokeData = result
                
                self.pokeData.imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(self.pokeData.id ?? 0).png"
                
                self.setupData()
            case .failure(let error):
                debugPrint(error)
            }
        }
        
//        AF.request("https://pokeapi.co/api/v2/pokemon/pikachu", method: .get).responseJSON { response in
//            switch response.result {
//            case .success(let result):
//
//                let json = JSON(result)
//
//                self.pokeData.id = json["id"].intValue
//                self.pokeData.name = json["name"].stringValue
//                self.pokeData.weight = json["weight"].intValue
//                self.pokeData.height = json["height"].intValue
//                self.pokeData.imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(self.pokeData.id ?? 0).png"
//
//                self.setupData()
//            case .failure(let error):
//                debugPrint(error)
//            }
//        }
    }
    
    func roundImage() {
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width/2
    }
    
    @IBAction func onActivationSwitchChanged(_ sender: UISwitch) {
        defaults.set(sender.isOn, forKey: "UserActivation")
    }
    
}

extension ProfileViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    
}
