//
//  NewViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 27/10/22.
//

import UIKit

class NewViewController: UIViewController {
    
    var colorPicker: ColorPicker?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = colorPicker?.colorName
        view.backgroundColor = colorPicker?.color
    }

}
