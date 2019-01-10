//
//  RightVC.swift
//  NaviTest
//
//  Created by Attila Marosi on 2019. 01. 09..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import UIKit

class RightVC: UIViewController {
    
    lazy var yellowButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Yellow", style: .plain, target: self, action: #selector(yellowButtonPressed(_:)))
        btn.tag = 1
        return btn
    }()
    
    lazy var backButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Back to root", style: .plain, target: self, action: #selector(backToRootButtonPressed(_:)))
        btn.tag = 2
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        self.navigationItem.leftBarButtonItem = yellowButton
        self.navigationItem.rightBarButtonItem = backButton
         self.navigationItem.title = "Right VC"
        
    }
    
    @objc private func yellowButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.pushViewController(YellowVC(), animated: true)
    }
    
    
    @objc private func backToRootButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
