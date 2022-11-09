//
//  NewViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 27/10/22.
//

import UIKit

class NewViewController: BaseViewController {
    
    var colorPicker: ColorPicker?
    
    
    
    init(colorPicker: ColorPicker? = nil) {
        super.init(nibName: "NewViewController", bundle: nil)
        self.colorPicker = colorPicker
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("NewViewcontroller destroyed !!!!!!!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = colorPicker?.colorName
        view.backgroundColor = colorPicker?.color
        
        self.setupUI()
    }

}
