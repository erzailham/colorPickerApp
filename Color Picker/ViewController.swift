//
//  ViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 25/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func redButtonTapped(_ sender: UIButton) {
        let storyBoard:UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "BViewController") as! BViewController
        vc.colorPicker = ColorPicker(colorName: "Red", color: .red)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        let vc = NewViewController()
        vc.colorPicker = ColorPicker(colorName: "Green", color: .green)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func blueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "navigateToB", sender: ColorPicker(colorName: "Blue", color: .blue))
    }
    
    @IBAction func orangeButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "navigateToB", sender: ColorPicker(colorName: "Orange", color: .orange))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let picker = sender as? ColorPicker
        let vc = segue.destination as? BViewController
        vc?.colorPicker = picker
    }
}

