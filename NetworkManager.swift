//
//  ReachabilityManager.swift
//  SAYS_MobileApp
//
//  Created by Senthil Kumar Kuppuraj on 3/2/17.
//  Copyright © 2017 TESCO. All rights reserved.
//

import UIKit


class NetworkManager{
    
    //MARK: Shared Instance
    class var SharedInstance: NetworkManager {
        struct Global {
            static let instance = NetworkManager()
        }
        return Global.instance
    }
    
    
    //MARK: Reachability Check
    func isNetworkReachable() -> Bool {
        
        if Reachability.isConnectedToNetwork() == true {
            return true
        } else {
            return false
        }
        
    }

}



