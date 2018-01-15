//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Muhammad Naeem Jawaid on 10/01/2018.
//  Copyright © 2018 Swift iOS Tutorials. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView: HomeView = {
        let hv = HomeView()
        hv.backgroundColor = .white
        hv.translatesAutoresizingMaskIntoConstraints = false
        return hv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    fileprivate func setupViews() {
        homeView.homeViewController = self
    }
}

