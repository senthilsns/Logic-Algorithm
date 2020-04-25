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
        
    
       if NetworkManager.SharedInstance.isNetworkReachable() == false
       {
        AlertManager.SharedInstance.alertWithoutHandler(alertTitle: "Internet Connection Required", alertMessage: nil, alertImage: nil, alertButtonTitle: "OK")

        
        }
        
        
        

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
        let final : String = IsPalindrome(InputStr: "madam")
        print(final)
        
        
        //MARK: Find MIN and Max ELEMENT IN ARRAY
        let element = findMinandMaxElement(inputArr: [12,13,14,3,4,6,7,8])
        print("Minimum Value = \(element.Min)")
        print("Maximum Value = \(element.Max)")
        
        
        //MARK: Find Element in Array
        let felement : String = findElement(searchString: "s", inputArr: ["a","b","c","z","f"])
        print(felement)
        
        //MARK: Armstrong Number
        let arm :String = IsArmstrongNumber(input: 10)
        print(arm)
        
        //MARK: Missing Element in Array
        let num :Int = isMissingElement(InputArr: [2,3,10,4,6,7,8,9])
        print(num)
        
        //MARK: Fibonacci Series
        let fib : [Int] = FibbonacciNumber(input: 10)
        print(fib)
        
        //MARK: Remove Duplicate
        let duplicate : [Int] = removeDuplicate(inputArr: [1,2,2,1,3,3,5,7,5,5])
        print(duplicate)
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
    
    //MARK:FIND MIN AND MAX ELEMENT IN ARRAY
    func findMinandMaxElement(inputArr:[Int])->(Min:Int,Max:Int) {
        
        var max = inputArr[0]
        for i in 0...inputArr.count-1 {
            if inputArr[i] > max {
                max = inputArr[i]
            }
        }
        
        var min = inputArr[0]
        for j in 0...inputArr.count-1 {
            if inputArr[j] < min {
                min = inputArr[j]
            }
            
        }
        
        return (min,max)
        
    }
    
    
    //MARK: Finding element in a Array
    func findElement(searchString:String ,inputArr:[String]) -> String{
        
        for i in 0...inputArr.count-1 {
            
            if inputArr[i] == searchString {
                
                return "\(searchString) Found"
            }
        }
        
        return "\(searchString) not Found"

    }
    
    
    //MARK: Armstrong Number
    func IsArmstrongNumber(input:Int) -> String{
        var num : Int = 0
        var reminder:Int = 0
        var sum :Int = 0
        
        num = input
        
        while num != 0 {
            reminder = num % 10
            sum += reminder * reminder * reminder
            num /= 10
        }
        
        if input == sum {
            
            return "\(input) is Armstrong Number"
        }else {
            return "\(input) is Not Armstrong Number"

        }
        
    }
    
    
    //MARK: Missing Element in Array
    func isMissingElement(InputArr:[Int]) -> Int {
        var n : Int = 0
        var n2 : Int = 0

        var total :Int = 0
        n = InputArr.count-1
        n2 = InputArr.count
        
        total = (n2 + 1) * (n2 + 2) / 2
        for i in 0...n-1 {
            total -= InputArr[i]
        }
        
        return total
    }
    
    
    //MARK: fibonacci Number
    func FibbonacciNumber(input:Int) -> [Int] {
        
        var t1 : Int = 0
        var t2 : Int = 1
        var nextTerm : Int = 0
        var finalArr:[Int] = []
        
        for _ in 1...input {
            
            finalArr.append(t1)
            nextTerm = t1 + t2
            t1 = t2
            t2 = nextTerm
            
        }
        
        return finalArr
    }
    
    //MARK: Remove Duplicate from array
    func removeDuplicate(inputArr:[Int]) -> [Int]
    {
        
        var current  = inputArr[0]
        var finalArr : [Int] = []
        var compArr : Array<Int> = []
        
        
        for i in 0...inputArr.count-1 {
            
            if (current == inputArr[i]) {
                finalArr.append(current)

            }else if (current != inputArr[i]){
                
                current = inputArr[i]
                
                compArr.append(current)
            }
        }

     //   print("compa ARR \(difference)")
         return finalArr
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
    
    

   


//var arrayOne = ["dog", "cat", "hamster", "gerbil", "turtle"],
//    arrayTwo = ["hamster", "turtle", "gerbil"],
//    doNotMatch = [];
//
//for(var i=0;i<arrayOne.length;i++){
//   if(arrayTwo.indexOf(arrayOne[i])==-1){doNotMatch.push(arrayOne[i]);}
//}
//
////doNotMatch is now ["dog","cat"]
