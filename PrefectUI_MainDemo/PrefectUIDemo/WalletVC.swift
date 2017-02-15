//
//  WalletVC.swift
//  UIPerfect
//
//  Created by piyush sinroja on 25/01/17.
//  Copyright © 2017 Piyush. All rights reserved.
//

import UIKit
import PerfectUI

class WalletVC: UIViewController {

    //Constraints Outlets
    @IBOutlet weak var consrt_Head_Height: NSLayoutConstraint!
    @IBOutlet weak var constr_segment_Height: NSLayoutConstraint!
    @IBOutlet weak var constr_btnHeight: NSLayoutConstraint!
    @IBOutlet weak var constr_txtHeight: NSLayoutConstraint!
    @IBOutlet weak var constr_txtFirstTop: NSLayoutConstraint!
    @IBOutlet weak var constr_btnTop: NSLayoutConstraint!
    @IBOutlet weak var constr_btnWidth: NSLayoutConstraint!
    @IBOutlet weak var constr_lblslide: NSLayoutConstraint!
    
    //Array Of Constraints Outlet
    @IBOutlet var constr_Mix: [NSLayoutConstraint]!
    @IBOutlet var constr_txtLR: [NSLayoutConstraint]!
    @IBOutlet var constr_txtVertical: [NSLayoutConstraint]!

    //UIButton Outlets
    @IBOutlet weak var btnRechargeNow: UIButton!
    @IBOutlet weak var btnRedeem: UIButton!
    @IBOutlet weak var btnWalletHistory: UIButton!
    
    //UIView Outlet
    @IBOutlet weak var viewSegment: UIView!
    
    //UILabel Outlets
    @IBOutlet weak var lblRupeeSymbol: UILabel!
    @IBOutlet weak var lblWalletAmount: UILabel!
    @IBOutlet weak var lblPrepaid: UILabel!
    @IBOutlet weak var lblPostpaid: UILabel!
    @IBOutlet weak var lblEnterDetails: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    //UITextField outlets
    @IBOutlet weak var txtMobileNo: UITextField!
    @IBOutlet weak var txtamount: UITextField!
    @IBOutlet weak var txtOperator: UITextField!
    @IBOutlet weak var txtCircle: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK:- SetupUI
    func setupUI() {
        // This Public Method is Used For Automatic set Constraints According To Device screen Size
        PixelsHelper.setConstraintAutomatic(constr: [consrt_Head_Height,constr_segment_Height,constr_txtHeight,constr_btnHeight,constr_txtFirstTop,constr_btnTop,constr_btnWidth] + constr_txtLR + constr_txtVertical + constr_Mix)
        
        // This Public Method is Used For Automatic set Font Size According To Device screen Size
        PixelsHelper.setFontForDevice(obj: [btnRechargeNow,txtMobileNo,txtamount,txtOperator,txtCircle,lblRupeeSymbol,lblWalletAmount,lblPrepaid,lblPostpaid,lblEnterDetails,btnRedeem,btnWalletHistory,lblTitle])
        
        txtMobileNo.shadownew()
        txtamount.shadownew()
        txtOperator.shadownew()
        txtCircle.shadownew()
        
        viewSegment.shadownew()
        
        txtamount.placeHolderSpaceAndColor()
        txtOperator.placeHolderSpaceAndColor()
        txtCircle.placeHolderSpaceAndColor()
        txtMobileNo.placeHolderSpaceAndColor()
        
        btnRechargeNow.cornerRadius()
    }

    //MARK:- SetupUI
    @IBAction func btnMenu(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
