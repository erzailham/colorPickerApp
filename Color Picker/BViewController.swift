//
//  BViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 25/10/22.
//

import UIKit

class BViewController: UIViewController {
    
    var colorPicker: ColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = colorPicker?.color
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "navigateToC", sender: nil)
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as? CViewController
        vc?.colorPicker = self.colorPicker
        
    }
}
