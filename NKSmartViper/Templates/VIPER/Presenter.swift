//  🐍NKSmartViper 2.0
//  Generated with NKSmartViperCodeGen
//  https://github.com/nkopilovskii/SmartVIPER
//  Copyright ©NickKopilovskii. All rights reserved.
//
//  $MODULE_NAMEConfigurator.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $MODULE_NAMEPresenter
class $MODULE_NAMEPresenter: NKViperPresenter<$MODULE_NAMEViewController, $MODULE_NAMERouter> {
  
  weak var view: $MODULE_NAMEViewController?
  var router: $MODULE_NAMEWireframe?
  
  lazy var interactor: $MODULE_NAMEUseCase = {
    return $MODULE_NAMEInteractor(output: self)
  }()
  
  internal required init<ViewType>(_ view: ViewType) {
    super.init(view)
  }
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {
    super.init(view: view, router: router)
    self.view = view as? $MODULE_NAMEViewController
    self.router = router as? $MODULE_NAMEWireframe
  }
  
  deinit {
    debugPrint("[$MODULE_NAME] Presenter has been deinited")
  }
  
}

//MARK: - $MODULE_NAMEPresentation protocol implementation
extension $MODULE_NAMEPresenter: $MODULE_NAMEPresentation {
 
}

//MARK: - $MODULE_NAMEInteractorOutput protocol implementation
extension $MODULE_NAMEPresenter: $MODULE_NAMEInteractorOutput {
  
}
