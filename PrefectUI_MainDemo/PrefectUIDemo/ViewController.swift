//
//  ViewController.swift
//  PrefectUIDemo
//
//  Created by piyush sinroja on 27/01/17.
//  Copyright © 2017 Piyush. All rights reserved.
//

import UIKit
import PerfectUI

class ViewController: UIViewController {

    // UILabel Outlets
    @IBOutlet weak var lblHeadingName: UILabel!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblEmailId: UILabel!
    @IBOutlet weak var lblMobile: UILabel!
    @IBOutlet weak var lblBirthday: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    
    // UITextField Outlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtMobile: UITextField!
    @IBOutlet weak var txtBirthday: UITextField!
    @IBOutlet weak var txtMale: UITextField!
    
    // NSLayoutConstraint Outlets
    @IBOutlet var constrMix: [NSLayoutConstraint]!
    
    // UIView Outlets
    @IBOutlet weak var view_Details: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //MARK:- SetupUI
    func setupUI() {
        
        view_Details.layer.cornerRadius = 3
        view_Details.shadownew(value: 5.0)
        
        // This Public Method is Used For Automatic set Constraints According To Device screen Size
        PixelsHelper.setConstraintAutomatic(constr: constrMix)
        
        // This Public Method is Used For Automatic set Font Size According To Device screen Size
        PixelsHelper.setFontForDevice(obj: [lblHeadingName, lblname,lblEmailId,lblMobile,lblBirthday,lblGender, txtName,txtEmail,txtMobile,txtBirthday,txtMale])
        
        //1) Custom Font Set fontDefaultIphone6 in Appdelegate , and give result According To  Device.
        //2) 35 set for Iphone6plus
        
        //  lblL.setFontForDevice(fontName: "HelveticaNeue-UltraLight", sizeofFont: 35)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK:- Button Action
    @IBAction func btnNext(_ sender: Any) {
        let objSimpleLoginVC = self.storyboard?.instantiateViewController(withIdentifier: "SimpleLoginVC") as! SimpleLoginVC
        self.navigationController?.pushViewController(objSimpleLoginVC, animated: true)
    }
}

