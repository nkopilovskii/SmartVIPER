//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  $MODULE_NAMEPresenter.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $MODULE_NAMEPresentation
class $MODULE_NAMEPresenter: NKSVPresenter<$MODULE_NAMEViewController, $MODULE_NAMERouter> {
  
  weak var view: $MODULE_NAMEViewController?
  var router: $MODULE_NAMEWireframe?
  lazy var interactor: $MODULE_NAMEUseCase = {
    return $MODULE_NAMEInteractor(output: self )
  }()
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {
    super.init(view: view, router: router)
    self.view = view as? $MODULE_NAMEViewController
    self.router = router as? $MODULE_NAMEWireframe
  }
  
}

//MARK: - $MODULE_NAMEPresentation protocol implementation
extension $MODULE_NAMEPresenter: $MODULE_NAMEPresentation {
  //TODO: Implement code
  func viewDidLoad() { }
}

//MARK: - $MODULE_NAMEInteractorOutput protocol implementation
extension $MODULE_NAMEPresenter: $MODULE_NAMEInteractorOutput {
  //TODO: Implement code
}
