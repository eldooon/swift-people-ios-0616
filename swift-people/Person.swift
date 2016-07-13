//
//  Person.swift
//  swift-person
//
//  Created by Eldon Chan on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name : String
    var ageInYears : Int?
    var skills : [String] = []
    var qualifiedTutor : Bool {
        if skills.count >= 4 {
            return true
        }
        
        return false
    }
    
    init (name : String, ageinYears : Int?) {
        self.name = name
        if ageinYears != nil {
            self.ageInYears = ageinYears
        }
    }
    
    convenience init (name : String){
        self.init(name : name, ageinYears : nil)
    }
    
    convenience init () {
        self.init(name : "John Doe", ageinYears : nil)
    }
    
    func celebrateBirthday() -> String {
        
        var returnBirthday = ""
        if ageInYears == nil {
             returnBirthday = "HAPPY BIRTHDAY, \(self.name.uppercaseString)!!!"
        }
        
        else {
            if let age = ageInYears {
                 returnBirthday = "HAPPY \(age)\(age.ordinal().uppercaseString) BIRTHDAY, \(self.name.uppercaseString)!!!"
            }
        }
        
        return returnBirthday
    }
    
    func learnSkillBash() {
        if skills.contains("bash") == false{
            skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if skills.contains("Xcode") == false{
            skills.append("Xcode")
        }
        
    }
    
    func learnSkillObjectiveC() {
        if skills.contains("Objective-C") == false{
            skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if skills.contains("Swift") == false{
            skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if skills.contains("Interface Builder") == false{
            skills.append("Interface Builder")
        }
    }

}
