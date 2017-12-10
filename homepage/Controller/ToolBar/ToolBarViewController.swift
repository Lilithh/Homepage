//
//  ToolBarViewController.swift
//  homepage
//
//  Created by wyh on 2017/12/10.
//  Copyright © 2017年 wyh. All rights reserved.
//

import UIKit

class ToolBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        navigationController?.delegate = self
        
        let appHomePage = AppHomePageViewController()
        let navAppHomePage = UINavigationController(rootViewController: appHomePage)
//        navAppHomePage.title = "房子"

//        navAppHomePage.tabBarItem.image = UIImage(named: "arrow")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
//        navAppHomePage.tabBarItem.selectedImage = UIImage(named: "anotherArrow")?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        navAppHomePage.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Home"), selectedImage: UIImage(named: "Home")) //自动改变颜色

        
        let bbs = BBSViewController()
        let navBBS = UINavigationController(rootViewController: bbs)
        navBBS.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "BBS"), selectedImage: UIImage(named: "BBS"))
        
        let myNews = MyNewsViewController()
        let navMyNews = UINavigationController(rootViewController: myNews)
        navMyNews.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "messageDisEm"), selectedImage: UIImage(named: "messageEm"))
        
        let personalHomePage = ViewController()
        let navPersonalHomePage = UINavigationController(rootViewController: personalHomePage)
        navPersonalHomePage.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "Pensonal"), selectedImage: UIImage(named: "Pensonal"))
        
        let pages = [navAppHomePage, navBBS, navMyNews, navPersonalHomePage]
        self.viewControllers = pages
//        self.tabBar.backgroundColor = .white
        self.tabBar.barTintColor = .white
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //NavigationControllerDelegate
//    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
//        let isShowInterface: Bool = viewController.isKind(of: ToolBarViewController.self)
//        navigationController.setNavigationBarHidden(isShowInterface, animated: true)
//    }
//
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
