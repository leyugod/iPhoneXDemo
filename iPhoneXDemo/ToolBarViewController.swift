//
//  ToolBarViewController.swift
//  iPhoneXDemo
//
//  Created by 神伤 on 2018/1/22.
//  Copyright © 2018年 7code. All rights reserved.
//

import UIKit
import Cartography

class ToolBarViewController: UIViewController{
    
    fileprivate var tableView:UITableView!
    fileprivate let demoButton=UIButton(type: UIButtonType.system)
    fileprivate let toolBar=UIToolbar()

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
extension ToolBarViewController{
    
    @objc func performDemo(sender:UIButton!){
        
        let alert=UIAlertController(title: "Demo", message: "This is an Demo Project Alert!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}

//UITableView DataSource
extension ToolBarViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.backgroundColor=UIColor.white
        cell.textLabel?.text="This is:\(indexPath.row)Rwo"
        
        return cell
    }
}

//MARK:UITableView Delegate
extension ToolBarViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 64
    }
}

//MARK:Setup UI
extension ToolBarViewController{
    
    func setup(){
        
        navigationItem.title="UIToolBar"
        
        tableView=UITableView(frame: view.bounds, style: .plain)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.dataSource=self
        tableView.delegate=self
        
        view.addSubview(tableView)
        
        view.addSubview(toolBar)
        toolBar.layoutIfNeeded()
        toolBar.addSubview(demoButton)
        
        demoButton.setTitle("Alert", for: .normal)
        demoButton.addTarget(self, action: #selector(performDemo(sender:)), for: .touchUpInside)
    }
}

//MARK:Layout UI Views
extension ToolBarViewController{
    
    func layoutView(){
        
        constrain(toolBar){view in
            
            view.bottom == view.superview!.bottom - 34
            view.left == view.superview!.left
            view.right == view.superview!.right
        }
        
        constrain(demoButton){view in
            
            //view.edges == view.superview!.edges
            view.centerX == view.superview!.centerX
            view.width == 200
            view.height == 48
            view.top == view.superview!.top + 10
        }
    }
}

//MARK:Style For VIews
extension ToolBarViewController{
    
    func styles(){
        
        view.backgroundColor=UIColor.white
        
        demoButton.setTitleColor(UIColor.white, for: .normal)
        demoButton.backgroundColor=UIColor.orange
    }
}

