//
//  ViperTestPresenter.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - ViperTestPresenter
class ViperTestPresenter: NKViperPresenter<ViperTestViewController, ViperTestRouter> {
  
  weak var view: ViperTestViewController?
  var router: ViperTestWireframe?
  
  lazy var interactor: ViperTestUseCase = {
    return ViperTestInteractor(output: self)
  }()
  
  internal required init<ViewType>(_ view: ViewType) {
    super.init(view)
  }
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {
    super.init(view: view, router: router)
    self.view = view as? ViperTestViewController
    self.router = router as? ViperTestWireframe
  }
  
  deinit {
    debugPrint("[ViperTest] Presenter has been deinited")
  }
  
}

//MARK: - ViperTestPresentation protocol implementation
extension ViperTestPresenter: ViperTestPresentation {
 
}

//MARK: - ViperTestInteractorOutput protocol implementation
extension ViperTestPresenter: ViperTestInteractorOutput {
  
}
