//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestLocalizer.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import Foundation

//MARK: - TestLocalizer
class TestLocalizer: NKSVLocalizer<Test> {
  typealias LanguageKey = NKSVLocalizer<Test>.LanguageKey
  
  //MARK: TestLocalizer.LocalizedKey
  enum LocalizedKey: String, Equatable {
    case lblTitle, txtContent, btnAlert, lblSwitchLanguage, alertTitle, alertMessage
  }
  
  func localizedString(for key: LocalizedKey) -> String {
    return localizedString(for:key.rawValue)
  }
}
