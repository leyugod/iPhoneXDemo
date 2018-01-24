//
//  MainViewController.swift
//  iPhoneXDemo
//
//  Created by 神伤 on 2018/1/22.
//  Copyright © 2018年 7code. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        layoutView()
        
        styles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//MARK:Actions
extension MainViewController{
    
    
}

//MARK:Setup UI
extension MainViewController{
    
    func setup(){
        
        let firstNavigationController=UINavigationController(rootViewController: ViewController())
        let secondNavigationController=UINavigationController(rootViewController: ViewController())
        
        viewControllers=[firstNavigationController,secondNavigationController]
        
        let firstBar=tabBar.items![0]
        firstBar.title="First"

        let secondBar=tabBar.items![1]
        secondBar.title="Second"
    }
}

//MARK:Layout UI Views
extension MainViewController{
    
    func layoutView(){
        
        
    }
}

//MARK:Style For VIews
extension MainViewController{
    
    func styles(){
        
        
    }
}

