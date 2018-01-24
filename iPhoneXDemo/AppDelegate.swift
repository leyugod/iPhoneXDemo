//
//  AppDelegate.swift
//  iPhoneXDemo
//
//  Created by 神伤 on 2018/1/17.
//  Copyright © 2018年 7code. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        setup()
        
        styles()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

//MARK:Setup UI
extension AppDelegate{
    
    func setup(){
        
        window=UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor=UIColor.white
        window?.rootViewController=MainViewController()
        window?.makeKeyAndVisible()
    }
}

//MARK:Style For VIews
extension AppDelegate{
    
    func styles(){
        
        //UINavigationBar.appearance().shadowImage=UIImage()
        //UINavigationBar.appearance().backgroundColor=UIColor.green
        //UINavigationBar.appearance().barTintColor=UIColor.red  //导航栏背景颜色
        
        UINavigationBar.appearance().tintColor=UIColor.orange
        UINavigationBar.appearance().prefersLargeTitles=true
        UINavigationBar.appearance().titleTextAttributes=[NSAttributedStringKey.foregroundColor:UIColor.orange]
        UINavigationBar.appearance().largeTitleTextAttributes=[NSAttributedStringKey.foregroundColor:UIColor.orange]
    }
}

