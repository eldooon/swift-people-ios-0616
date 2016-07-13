//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        * Manually test your code here.
        
        */
        
        //Test Birthday
        let rachealWithAge = Person(name: "Racheal", ageinYears: 25)
        let rachealWithoutAge = Person(name: "Racheal")
        
        print (rachealWithAge.celebrateBirthday())
        print (rachealWithoutAge.celebrateBirthday())
        
        //Test Skills
        rachealWithAge.learnSkillBash()
        rachealWithAge.learnSkillSwift()
        rachealWithAge.learnSkillXcode()
        rachealWithAge.learnSkillInterfaceBuilder()
        
        print (rachealWithAge.skills)
        print ("Is Racheal qualified?:\(rachealWithAge.qualifiedTutor)")
        
        rachealWithoutAge.learnSkillBash()
        rachealWithoutAge.learnSkillSwift()
        rachealWithoutAge.learnSkillXcode()
        
        print (rachealWithoutAge.skills)
        print ("Is Racheal qualified?:\(rachealWithoutAge.qualifiedTutor)")
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

