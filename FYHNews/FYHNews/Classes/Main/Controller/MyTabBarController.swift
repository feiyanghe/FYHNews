//
//  MyTabBarController.swift
//  FYHNews
//
//  Created by feiyanghe on 2018/5/14.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(tabBar)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245 / 255.0, green: 90 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        //添加子控制器
        addChildViewControllers()
    }
    ///添加子控制器
    func addChildViewControllers() {
        setChildViewController(HomeViewController(), title: "首页", imageName: "home_tabbar_32x32_", selectImageName: "home_tabbar_press_32x32_")
        setChildViewController(VideoViewController(), title: "西瓜视频", imageName: "video_tabbar_32x32_", selectImageName: "video_tabbar_press_32x32_")
        setChildViewController(RedPackageViewController(), title: "", imageName: "redpackage_tabbar_32x32_", selectImageName: "redpackage_tabbar_press_32x32_")
        
        setChildViewController(WeitoutiaoViewController(), title: "微头条", imageName: "weitoutiao_tabbar_32x32_", selectImageName: "weitoutiao_tabbar_press_32x32_")
        setChildViewController(HuoshanViewController(), title: "小视频", imageName: "huoshan_tabbar_32x32_", selectImageName: "huoshan_tabbar_press_32x32_")
    }
    ///初始化子控制器
    func setChildViewController(_ childController: UIViewController,title: String,imageName: String,selectImageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectImageName)
        childController.tabBarItem.title = title
        //添加导航控制器为TabBarController的子控制器
        let navVC = MyNavigationController(rootViewController: childController)
        childController.title = title
        addChildViewController(navVC)
        
    }
    
    

    

}
