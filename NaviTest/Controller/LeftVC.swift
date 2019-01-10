//
//  LeftVC.swift
//  NaviTest
//
//  Created by Attila Marosi on 2019. 01. 09..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import UIKit

import UIKit

class LeftVC: UIViewController {
    
    lazy var redButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Red VC", style: .plain, target: self, action: #selector(redButtonPressed(_:)))
        btn.tag = 1
        return btn
    }()
    
    lazy var upButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Back to root", style: .plain, target: self, action: #selector(backButtonPressed(_:)))
        btn.tag = 2
        return btn
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        self.navigationItem.leftBarButtonItem = redButton
        self.navigationItem.rightBarButtonItem = upButton
        self.navigationItem.title = "Left VC"
    }
    
    @objc private func redButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.pushViewController(RedVC(), animated: true)
    }
    
    
    @objc private func backButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
