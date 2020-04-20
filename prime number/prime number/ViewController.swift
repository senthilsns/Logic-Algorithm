//
//  ViewController.swift
//  prime number
//
//  Created by Senthil on 18/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //MARK: Prime number or not
        let isNumber : String = isPrimeNumber(number: 1)
        print(isNumber)
        
        
//        let isNotRepeatingCharacter :String = IsRemoveDuplicateCharacter(inputStr: "aaaffggffzsssfffhhhjjj")
//        print(isNotRepeatingCharacter)
        
        //MARK: Swap String
        let swap = swapString(str1: "kumar", str2: "Senthil")
        print(swap.0 ,swap.1)
        
        //MARK: Reverse String
        let reverseStr : String = IsReverseString(inputStr: "Senthilkumar")
        print(reverseStr)
        
        
        //MARK: Palindrome
        let final : String = IsPalindrome(InputStr: "aba")
        print(final)
        
        
    }
    
    
    //MARK: Prime number or not
    func isPrimeNumber (number:Int) -> String {
      
        if number == 1 || number == 2 || number == 3{
            return "\(number) is a Prime Number"
        }

        var flag: Bool = false
        for i in 2...number/2  {
            
            if (number % i == 0) {
                flag = true
                break
            }
        }
        
        if flag == false {
            return "\(number) is a Prime Number"
        }else {
             return "\(number) Not a Prime Number"
        }
        
    }
    
    
   // MARK: Swap Two String
    func swapString (str1:String ,str2:String) -> (String,String){
        
        var a = str1
        var b = str2
        
        let temp = a
        a = b
        b = temp
        
        return(a,b)
    }
    
    
    // MARK : Reverse String
    func IsReverseString (inputStr:String) -> String {
        
        let charArray : Array = Array(inputStr)
        var tempArray: Array<Character> = []
        var finalStr : String = ""
        
        for i in (1...charArray.count).reversed() {
            
            tempArray.append(contentsOf: "\(charArray[i-1])")
        }
        
      finalStr = String(tempArray)
      return finalStr
        
    }
    
    //MARK: Palindrome Or not
    func IsPalindrome(InputStr:String) ->String
    {
      let charArray : Array = Array(InputStr)
      var tempArray: Array<Character> = []
      var finalStr : String = ""
     
      for i in (1...charArray.count).reversed() {

        tempArray.append(contentsOf: "\(charArray[i-1])")
         
       }
       
       finalStr = String(tempArray)
      
        if InputStr == finalStr {
            return "\(InputStr) is Palindrome"
        }else{
            return "\(InputStr) is Not a Palindrome"

        }
        
    }
    
    
    func IsRemoveDuplicateCharacter(inputStr:String) -> String {
        
        let charArray :Array<Character> = Array(inputStr)
        var tempArray: Array<Character> = []
        let arrLength = charArray.count

        for i in 1...arrLength {
            
            for j in i+1...arrLength {
                
                if (charArray[i] == charArray[j]) {
                    // Do not print
                    tempArray.append(contentsOf: "\(charArray[j])")
                    print("\(charArray[j])")
                    
                }else{
                   // finalArray.append(charArray[i])
                }
                
            }
            
        }
        
        return "wfwf"
    }
    
    
    
    


}

