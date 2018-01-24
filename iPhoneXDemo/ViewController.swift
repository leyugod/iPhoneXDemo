//
//  ViewController.swift
//  iPhoneXDemo
//
//  Created by 神伤 on 2018/1/17.
//  Copyright © 2018年 7code. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    fileprivate var tableView:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
        styles()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

//UITableView DataSource
extension ViewController:UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell=tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text="\(indexPath.section)"
        //cell.backgroundColor=UIColor.orange
        
        return cell
    }
}

//MARK:UITableView Delegate
extension ViewController:UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let toolBarViewController=ToolBarViewController()
        toolBarViewController.hidesBottomBarWhenPushed=true
        navigationController?.pushViewController(toolBarViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        switch section{
            
        case 0:
            
            return 10
            
        default:
            
            return CGFloat.leastNormalMagnitude
        }
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
        return 10
    }
}

//MARK:Actions
extension ViewController{
    
    @objc func performAdd(sender:UINavigationItem!){
        
        
    }
}

//MARK:Setup UI
extension ViewController{
    
    func setup(){
        
        navigationItem.title="iPhone X Projects"
        
        tableView=UITableView(frame: view.bounds, style: .grouped)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        tableView.dataSource=self
        tableView.delegate=self
        
        view.addSubview(tableView)
        
        navigationItem.rightBarButtonItem=UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(self.performAdd(sender:)))
    }
}

//MARK:Layout UI Views
extension ViewController{
    
    func layoutView(){
        
        
    }
}

//MARK:Style For VIews
extension ViewController{
    
    func styles(){
        
        //tableView.backgroundColor=UIColor.white
        tableView.separatorStyle=UITableViewCellSeparatorStyle.none
        tableView.estimatedRowHeight=0
        tableView.estimatedSectionHeaderHeight=0
        tableView.estimatedSectionFooterHeight=0
        
        navigationItem.backBarButtonItem=UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        navigationItem.largeTitleDisplayMode=UINavigationItem.LargeTitleDisplayMode.automatic
    }
}

