//  🐍NKSmartViper 2.0
//  Generated with NKSmartViperCodeGen
//  https://github.com/nkopilovskii/SmartVIPER
//  Copyright ©NickKopilovskii. All rights reserved.
//
//  $MODULE_NAMEPresenter.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $MODULE_NAMEPresenter
class $MODULE_NAMEPresenter: NKPresenter<$MODULE_NAMEViewController> {
  
  weak var view: $MODULE_NAMEViewController?
  
  required init<ViewType>(_ view: ViewType) {
    super.init(view)
    self.view = view as? $MODULE_NAMEViewController
  } 
  
  deinit {
    debugPrint("[$MODULE_NAME] Presenter has been deinited")
  }
  
}


//MARK: - $MODULE_NAMEPresentation protocol implementation
extension $MODULE_NAMEPresenter: $MODULE_NAMEPresentation {
  
}
