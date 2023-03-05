//
//  ViewController.swift
//  TestLayout
//
//  Created by m.korovin on 05.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let cyanView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(redView)
        view.addSubview(cyanView)
        
        NSLayoutConstraint.activate([
            redView.widthAnchor.constraint(equalToConstant: 150),
            redView.heightAnchor.constraint(equalToConstant: 30),
//            redView.centerYAnchor.constraint(equalTo: cyanView.centerYAnchor),
//            redView.leadingAnchor.constraint(equalTo: cyanView.trailingAnchor)
            redView.bottomAnchor.constraint(equalTo: cyanView.topAnchor, constant: -20),
            redView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            cyanView.widthAnchor.constraint(equalToConstant: 150),
            cyanView.heightAnchor.constraint(equalToConstant: 30),
            cyanView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cyanView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
        
    }


}

