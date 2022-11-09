//
//  BViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 25/10/22.
//

import UIKit

class BViewController: UIViewController {
    
    public var colorPicker: ColorPicker?
    
    fileprivate var colorPicker2: ColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
        self.view.backgroundColor = colorPicker?.color
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
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

class ZViewController: UIViewController {
    
    override func viewDidLoad() {
        BViewController().colorPicker2
    }
}
