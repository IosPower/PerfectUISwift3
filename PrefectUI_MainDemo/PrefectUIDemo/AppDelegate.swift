//
//  AppDelegate.swift
//  PrefectUIDemo
//
//  Created by piyush sinroja on 27/01/17.
//  Copyright © 2017 Piyush. All rights reserved.
//

import UIKit
import PerfectUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        // Note : Not Default Available For Iphone 4
        PixelsHelper.defaultScreenWidth = PixelsHelper.defaultTookWidthPixels.iPhone6Plus.rawValue
        PixelsHelper.defaultScreenHeight = PixelsHelper.defaultTookHeightPixels.iPhone6Plus.rawValue
        
        // Above Dependancy
        
        // For iPhone6Plus = ThreeXScreen == rawvalue 3
        // For iPhone6, iPhone5 = TwoXScreen == rawvalue 2
        // For iPhone4 = OneXScreen == rawvalue 1
        PixelsHelper.objPixelsHelper.PIXEL_MULTI  = PixelsHelper.defaultTwoXOrThreeX.ThreeXScreen.rawValue
        
        //-----------------******-----------------//
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
}

//MARK:- UITextField Extension
extension UITextField
{
     override func shadownew() {
        self.layer.masksToBounds = false
        self.layer.shadowRadius = 2.0
        self.layer.cornerRadius = 2.0
        self.layer.shadowColor = UIColor(red: 184/255, green: 184/255, blue: 184/255, alpha: 0.5).cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 0.5)
        self.layer.shadowOpacity = 1.0
    }
    
    func placeHolderSpaceAndColor() {
        self.setValue(UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 0.7), forKeyPath: "_placeholderLabel.textColor")
        
        let label = UILabel(frame: CGRect(x :0,y :0,width :17,height: 10))
        label.text = ""
        self.leftViewMode = .always
        self.leftView = label
    }
}

//MARK:- UIView Extension
extension UIView{
    func shadownew(value: CGFloat) {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = value
    }

    func shadownew() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 2
    }
}

//MARK:- UIButton Extension
extension UIButton{
    func cornerRadius() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 2.0
    }
}
