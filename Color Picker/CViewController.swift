//
//  CViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 25/10/22.
//

import UIKit

class CViewController: UIViewController {
    
    @IBOutlet weak var titleButton: UIButton!

    var colorPicker: ColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let title = "This is \(colorPicker?.colorName ?? "")"
        titleButton.setTitle(title, for: .normal)
        self.view.backgroundColor = colorPicker?.color
    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
