//
//  ViewController.swift
//  NaviTest
//
//  Created by Attila Marosi on 2019. 01. 09..
//  Copyright © 2019. Attila Marosi. All rights reserved.
//

import UIKit

class RootVC: UIViewController {

    lazy var naviLeftButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Main Left", style: .plain, target: self, action: #selector(mainLeftButtonPressed(_:)))
        btn.tag = 1
        return btn
    }()
    
    lazy var naviRightButton: UIBarButtonItem = {
        let btn = UIBarButtonItem(title: "Main Right", style: .plain, target: self, action: #selector(mainRightButtonPressed(_:)))
        btn.tag = 2
        return btn
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.leftBarButtonItem = naviLeftButton
        self.navigationItem.rightBarButtonItem = naviRightButton
        self.title = "Root vc"
//        self.tabBar.backgroundColor = .purple
//
//        let tab1 = TabOneVC()
//        let tab2 = TabTwoVC()
//        let firstTabItem = UITabBarItem(title: "Tab One", image: nil, tag: 1)
//        let secondTabItem = UITabBarItem(title: "Tab Two", image: nil, tag: 2)
//        tab1.tabBarItem = firstTabItem
//        tab2.tabBarItem = secondTabItem
//        tabBarController?.viewControllers = [tab1, tab2]
//
        
    }

    @objc private func mainLeftButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.pushViewController(LeftVC(), animated: true)
    }
    
    
    @objc private func mainRightButtonPressed(_ sender: UIBarButtonItem) {
        self.navigationController?.pushViewController(RightVC(), animated: true)
    }

}

