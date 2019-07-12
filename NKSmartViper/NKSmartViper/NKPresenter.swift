//
//  NKPresenter.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - MVP
///MVP Presenter base generic class
class NKPresenter<ViewType: AnyObject> {
  required init<ViewType>(_ view: ViewType) {  }
}
//MARK: -


//MARK: - VIPER
///VIPER Presenter base generic class
class NKViperPresenter<ViewType: AnyObject, RouterType>: NKPresenter<ViewType> {
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {
    super.init(view)
  }
  
  required init<ViewType>(_ view: ViewType) {
    super.init(view)
  }
  
}
//MARK: -
