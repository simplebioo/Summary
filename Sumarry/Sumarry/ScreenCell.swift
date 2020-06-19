//
//  screenCell.swift
//  Sumarry
//
//  Created by Bioo on 16.06.2020.
//  Copyright © 2020 Bioo. All rights reserved.
//

import Foundation
import UIKit

struct SomeModel {
    let firstScreenLabel = "Skills:"
    let firstScreenLabel2 = """
•    Foundation
•    UIKit (Storyboard, Xib, Autolayout)
•    Networking (Api, Alamofire, SwiftyJSON)
•    Concurrency (GCD)
•    Git
•    Database (Realm, CoreData)
•    CocoaPods
•    Architecture Patterns: MVC, MVVM
"""
    let secondScreenLabel = "Language skills and about me:"
    let secondScreenLabel2 = """
    English - intermediate
    Russian - fluent
    Ukrainian - native

I am a beginner iOS developer. At the moment I am looking for work in Kiev or
remotely for a Junior iOS Developer vacancy. About myself: easily trained,
interested in training, ability to work in a team, complete tasks on time.
"""
    let thirdScreenLabel = "Education and purpose at work:"
    let thirdScreenLabel2 = "I have specialized secondary education Software Development and incomplete higher. Also passed the courses of the portal SwiftBook.ru. An iOS developer who wants to develop in the mobile development industry, improve his skills in creating high-quality code and gain more experience in developing for iOS."
    
}

class ScreenCell: UICollectionViewCell {
    
    @IBOutlet weak var skillsLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
}
