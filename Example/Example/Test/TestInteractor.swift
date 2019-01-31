//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestInteractor.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import Foundation

//MARK: - TestInteractor
class TestInteractor: NKSVInteractor<TestPresenter> {
  weak var output: TestInteractorOutput?
  
  var currentLanguage: TestLocalizer.LanguageKey?
  
  required init(output: InteractorOutputType?) {
    super.init(output: output)
    self.output = output
  }
}

//MARK: - TestUseCase protocol implementation
extension TestInteractor: TestUseCase {
  var localizer: TestLocalizer {
    return TestLocalizer(language: languageKey)
  }
  
  var languageKey: TestLocalizer.LanguageKey {
    if let currentLanguage = self.currentLanguage {
      return currentLanguage
    }
    
    if let language = NSLocale.preferredLanguages.first, language.contains(TestLocalizer.LanguageKey.ru.rawValue) {
      self.currentLanguage = .ru
      return .ru
    } else {
      self.currentLanguage = .en
      return .en
    }
    
  }
  
  func prepareAlertContent() {
    let localizer = self.localizer
    output?.preparedAlert(localizer.localizedString(for: .alertTitle), message: localizer.localizedString(for: .alertMessage))
  }
  
  func switchLanguage() {
    if let currentLanguage = currentLanguage, currentLanguage == .ru {
      self.currentLanguage = .en
    } else {
      self.currentLanguage = .ru
    }
    
    output?.didSwitchLanguage()
  }
}
