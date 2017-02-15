		                                              Perfect UI Document


I have Made PerfectUI Logic. with the help of this We can improve our UI Quality in our Project.


Advantages : 

o	Set Constraint Once For One Device and it will Automatic Set Constraint For Other Devices With Pixel To Pixel.

o	Very Useful For Set Automatic Font Size, Set Font Size Once  For One Device  and it will Automatic Set Font Size For Other Devices With Pixel To Pixel.

o	We can Set Custom Font. Support (UIButton, UILabel, UITextfield, UITextView)

o	UI Quality Improve Upto 70-90 %


Note: 

1) You have to Bind Outlets of Constraints which you   want pixel to pixel work.



Steps:

1.	Add PerfectUI Framework and import it in your class

2.	In Appdelegate Class 

If you have given Constraints in Iphone6 plus StoryBoard Then
Add: 

PixelsHelper.defaultScreenWidth = PixelsHelper.defaultTookWidthPixels.iPhone6Plus.rawValue

     PixelsHelper.defaultScreenHeight = PixelsHelper.defaultTookHeightPixels.iPhone6Plus.rawValue 
          //  Value Will be Changed depend on default Storyboard 
           Set it in didFinishLaunchingWithOptions method or where you want to initialize.

    PixelsHelper.objPixelsHelper.PIXEL_MULTI  = PixelsHelper.defaultTwoXOrThreeX.ThreeXScreen.rawValue
// Here 3x for Iphone 6plus, and 2x for iphone 6, and iphone 5



3.  Public Methods For Constraints and Font

//---------For Constraints -------//

// Pass Constraints Outlets Or OutletCollection in Array

example : 

@IBOutlet var constrMix:[NSLayoutConstraint]!
@IBOutlet weak var const_lblLeading: NSLayoutConstraint!

PixelsHelper.setConstraintAutomatic(constr: [const_lblLeading] + constrMix)
    
//-------------For Font-------------//

// Support For Font (UILabel, UITextField, UIButton, UITextView)

Example: 

@IBOutlet weak var txtName:UITextField!
@IBOutlet weak var txtEmail:UITextField!
@IBOutlet weak var lblEmailId: UILabel
@IBOutlet weak var lblMobile: UILabel!

// Pass in Array
PixelsHelper.setFontForDevice(obj: [txtName, txtEmail, lblEmailId, lblMobile])



4. For Custom Font 
Example: @IBOutlet weak var lblEmailId: UILabel

lblEmailId.setFontForDevice(fontName: "HelveticaNeue-UltraLight", sizeofFont: 35)

Support Also For Button, Textfield, TextView





