//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestPresenter.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import Foundation

//MARK: - TestPresentation
class TestPresenter: NKSVPresenter<TestViewController, TestRouter> {
  
  weak var view: TestViewController?
  var router: TestWireframe?
  lazy var interactor: TestUseCase = {
    return TestInteractor(output: self )
  }()
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {
    super.init(view: view, router: router)
    self.view = view as? TestViewController
    self.router = router as? TestWireframe
  }
  
  deinit {
    debugPrint("[Test] Presenter has been deinited")
  }
  
}

//MARK: - TestPresentation protocol implementation
extension TestPresenter: TestPresentation {
  func viewDidLoad() {
    didSwitchLanguage()
  }
  
  func didTapShowAlert() {
    interactor.prepareAlertContent()
  }
  
  func didTapSwitchLanguage() {
    interactor.switchLanguage()
  }

}

//MARK: - TestInteractorOutput protocol implementation
extension TestPresenter: TestInteractorOutput {
  func preparedAlert(_ title: String?, message: String?) {
    router?.showAlert(title, message: message)
  }
  
  func didSwitchLanguage() {
    switch interactor.languageKey {
    case .Base, .en:
      view?.switchLanguageIsOn = false
    default:
      view?.switchLanguageIsOn = true
    }
    
    view?.localizeView(interactor.localizer)
  }
}
