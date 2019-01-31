//  🐍NKSmartViper
//  Services.swift
//
//
//  Created by Nick Kopilovskii on 1/28/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//  https://github.com/nkopilovskii/SmartVIPER

import Foundation

class NKSVLocalizer<C> {
  typealias ConfiguratorType = C
  
  enum LanguageKey: String {
    case Base
    case en
    case ru
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
