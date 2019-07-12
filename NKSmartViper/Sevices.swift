//
//  NKLocalizer.swift
//
//
//  Created by Nick Kopilovskii on 1/28/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

class NKLocalizer<Type> {
  
  enum LanguageKey: String {
    case Base
    //TODO: Add supported languages identifiers
  }
  
  let language: LanguageKey
  let tableName: String
  let bundle: Bundle
  
  init(language: LanguageKey? = .Base) {
    self.language = language ?? .Base
    self.tableName = String(describing: ConfiguratorType.self)
    
    if let path = Bundle.main.path(forResource: (language ?? .Base).rawValue, ofType: "lproj"), let bundle = Bundle(path: path) {
      self.bundle = bundle
    } else {
      self.bundle = .main
    }
  }
  
  func localizedString(for key: String) -> String {
    return bundle.localizedString(forKey: key, value: key, table: tableName)
  }
}
