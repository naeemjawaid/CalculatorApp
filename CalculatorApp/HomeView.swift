//
//  HomeView.swift
//  CalculatorApp
//
//  Created by Muhammad Naeem Jawaid on 10/01/2018.
//  Copyright © 2018 Swift iOS Tutorials. All rights reserved.
//

// This line of code is added in branch: develop

import UIKit

class HomeView: UIView {
    
    // MARK: - Properties
    weak var homeViewController: HomeViewController? {
        didSet {
            setupHomeView()
        }
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        //        label.backgroundColor = .blue
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View setup
    
    private func setupViews() {
        
        addSubview(label)
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 160).isActive = true
        label.heightAnchor.constraint(equalToConstant: 36).isActive = true
    }
    
    private func setupHomeView() {
        if let homeViewController = homeViewController {
            homeViewController.view.addSubview(self)
            // position (x, y)
            // size (width, height)
            leftAnchor.constraint(equalTo: homeViewController.view.leftAnchor).isActive = true
            topAnchor.constraint(equalTo: homeViewController.view.topAnchor).isActive = true
            rightAnchor.constraint(equalTo: homeViewController.view.rightAnchor).isActive = true
            bottomAnchor.constraint(equalTo: homeViewController.view.bottomAnchor).isActive = true
        }
    }
}









