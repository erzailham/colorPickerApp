//
//  BaseViewController.swift
//  Color Picker
//
//  Created by Reza Ilham on 07/11/22.
//

import Foundation
import UIKit

protocol BaseViewControllerDelegate {
    func setupUI()
    func navigateTo(_ vc: UIViewController)
}

class BaseViewController: UIViewController, BaseViewControllerDelegate {
    
    func setupUI() {
        self.view.backgroundColor = .gray
    }
    
    func navigateTo(_ vc: UIViewController) {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
