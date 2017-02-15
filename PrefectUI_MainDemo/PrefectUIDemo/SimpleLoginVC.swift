//
//  SimpleLoginVC.swift
//  UIPerfect
//
//  Created by piyush sinroja on 24/01/17.
//  Copyright © 2017 Piyush. All rights reserved.
//

import UIKit
import PerfectUI

class SimpleLoginVC: UIViewController {
    
    let objAppdelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // NSLayoutConstraint Outlets
    @IBOutlet weak var const_btnVerifyLeading: NSLayoutConstraint!
    @IBOutlet weak var const_btnVerifyTrailing: NSLayoutConstraint!
    @IBOutlet weak var const_lblLeading: NSLayoutConstraint!
    @IBOutlet weak var const_lblTrailing: NSLayoutConstraint!
    @IBOutlet weak var const_btnVerifyTop: NSLayoutConstraint!
    @IBOutlet weak var const_lblTop: NSLayoutConstraint!
    @IBOutlet weak var const_btnHeight: NSLayoutConstraint!
    @IBOutlet weak var const_imageTop: NSLayoutConstraint!
    @IBOutlet weak var const_lblsecondTop: NSLayoutConstraint!
    @IBOutlet weak var constr_PrivacyTop: NSLayoutConstraint!
    
    // UIImageView Outlet
    @IBOutlet weak var imgLogo: UIImageView!
    
    // UIButton Outlet
    @IBOutlet weak var btnVerify: UIButton!
    
    // UITextField Outlet
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtReferralCode: UITextField!
    
    // UILabel Outlet
    @IBOutlet weak var lblPrivacy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //MARK:- SetupUI
    func setupUI() {
        // This Public Method is Used For Automatic set Constraints According To Device screen Size
        PixelsHelper.setConstraintAutomatic(constr: [const_btnVerifyLeading,const_btnVerifyTrailing,const_lblLeading,const_lblTrailing,const_btnVerifyTop,const_lblTop,const_btnHeight,const_imageTop,const_lblsecondTop,constr_PrivacyTop])
        
        // This Public Method is Used For Automatic set Font Size According To Device screen Size
        PixelsHelper.setFontForDevice(obj: [txtMobileNumber, txtReferralCode,lblPrivacy,btnVerify])
        //lblL.setFontForDevice(fontName: "HelveticaNeue-UltraLight", sizeofFont: 35)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- Button Action
    @IBAction func btnVerify(_ sender: Any) {
        let viewWalletVC = self.storyboard?.instantiateViewController(withIdentifier: "WalletVC") as! WalletVC
        self.navigationController?.pushViewController(viewWalletVC, animated: true)
    }
}
