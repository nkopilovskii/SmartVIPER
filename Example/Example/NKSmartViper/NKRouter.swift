//
//  NKRouter.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import UIKit

//MARK: - VIPER
///VIPER Router base generic class
class NKRouter<ViewType: AnyObject> {
  
  weak var view: UIViewController?
  
  required init<ViewType>(_ view: ViewType) {
    self.view = view as? UIViewController
  }
}
//MARK: - 
