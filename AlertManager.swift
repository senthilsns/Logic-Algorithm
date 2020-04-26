//
//  AlertManager.swift
//
//  Created by Senthil Kumar Kuppuraj on 20/2/20.
//  Copyright © 2020. All rights reserved.
//

import UIKit

class AlertManager{
    
    //MARK: Shared Instance
    class var SharedInstance: AlertManager {
        struct Global {
            static let instance = AlertManager()
        }
        return Global.instance
    }
    
    
    
    //MARK: Alert Controller WithOut Handler
    func alertWithoutHandler (alertTitle title:String! , alertMessage message:String!, alertImage AImage:String! , alertButtonTitle cancelButtonTitle:String!)  {
        
        let errorTitle : String
        if AImage != nil {
            errorTitle = "\n\n \(title!)"
        }else{
            errorTitle = "\(title!)"
        }
        let alert = UIAlertController(title: errorTitle, message:message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title:cancelButtonTitle, style: UIAlertAction.Style.default, handler: nil))
        
        // Image Not a nil
        if AImage != nil{
            // Adding Image to AlertController
            let imageView = UIImageView(frame: CGRect.init(x: 110, y: 10, width: 50, height: 50))
            imageView.image = UIImage(named: AImage)
            alert.view.addSubview(imageView)
        }
        
        
        UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController!.present(alert, animated: true, completion: nil)

        
    }
    
    
    //MARK: Alert Controller With Image and Handler
    func alertWithHandler (alertTitle title:String! , alertMessage message:String!, alertImage AImage:String!, buttonTitle buttonNames:[String?],buttonHandler Handler: ((UIAlertAction?) -> Void)!) {
        
        let errorTitle : String
        if AImage != nil {
            errorTitle = "\n\n \(title!)"
        }else{
            errorTitle = "\(title!)"
        }
        
        let alert = UIAlertController(title: errorTitle, message:message, preferredStyle: UIAlertController.Style.alert)
        for name in buttonNames {
            alert.addAction(UIAlertAction(title: name, style: .default, handler: Handler))
        }
        
        // Image Not a nil
        if AImage != nil{
            // Adding Image to AlertController
            let imageView = UIImageView(frame: CGRect.init(x: 110, y: 10, width: 50, height: 50))
            imageView.image = UIImage(named: AImage)
            alert.view.addSubview(imageView)
        }
        
      
        UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController!.present(alert, animated: true, completion: nil)


    }
    
    
    
    
    /*
     
     ***********************************************************************************************
     ************************* Alert Manager Usage Description *************************************
     ***********************************************************************************************
     
     Note:
     1. One Button Title is Mandatory ["OK"]
     2. Image name is optional (nil)
     3. Get Button Action with Handler (action) -> Void
     4. Alert Title and Message Should be String
     
     ////////////////////////////////////////////////////////////////////////////////////////////////
     
     AlertManager.SharedInstance.alertWithOutHandler(alertTitle: "Sample", alertMessage: "data", alertImage: nil, alertButtonTitle: "OK")
     
     ////////////////////////////////////////////////////////////////////////////////////////////////
     AlertManager.SharedInstance.alertWithHandler(alertTitle: "senthil", alertMessage: "kumar", alertImage:"Error", buttonTitle: ["Do","Did"], buttonHandler: {
     (action) -> Void in
     
     if action?.title == "Do"{
     
     // Do Button Action
     }else if action?.title == "Did"{
     
     // Did Button Action
     }
     })
     
     */
    
}
