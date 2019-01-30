//  🐍NKSmartViper
//  Services.swift
//
//
//  Created by Nick Kopilovskii on 1/28/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

class NKSVLocalizer<C> {
  typealias ConfiguratorType = C
  
  enum LanguageKey: String {
    case Base
    //TODO: Add supported languages
  }
  
  let language: LanguageKey
  
  init(language: LanguageKey? = .Base) {
    self.language = language ?? .Base
  }
  
  func localizedString(for key: String) -> String {
    let tableName = String(describing: ConfiguratorType.self)
    guard let path = Bundle.main.path(forResource: language.rawValue, ofType: "lproj"), let bundle = Bundle(path: path) else {
      return Bundle.main.localizedString(forKey: key, value: key, table: tableName)
    }
    
    return bundle.localizedString(forKey: key, value: key, table: tableName)
  }
  
}
