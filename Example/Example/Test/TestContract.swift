//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestContract.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import UIKit

//MARK: - TestView protocol
protocol TestView: NKSVView where PresenterType == TestPresentation {
  var  switchLanguageIsOn: Bool { get set }
  func localizeView(_ localizer: TestLocalizer)
}

//MARK: - TestPresentation protocol
protocol TestPresentation: class {
  func viewDidLoad()
  func didTapShowAlert()
  func didTapSwitchLanguage()
}

//MARK: - TestUseCase
protocol TestUseCase: class {
  var localizer: TestLocalizer { get }
  var languageKey: TestLocalizer.LanguageKey { get }
  func prepareAlertContent()
  func switchLanguage()
}

//MARK: - TestInteractorOutput
protocol TestInteractorOutput: class {
  func preparedAlert(_ title: String?, message: String?)
  func didSwitchLanguage()
}

//MARK: - TestWireframe
protocol TestWireframe: class {
  func showAlert(_ title: String?, message: String?)
}


