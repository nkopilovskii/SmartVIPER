//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  $MODULE_NAMELocalizer.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $MODULE_NAMELocalizer
class $MODULE_NAMELocalizer: NKSVLocalizer<$MODULE_NAME> {
  typealias LanguageKey = NKSVLocalizer<$MODULE_NAME>.LanguageKey
  
  //MARK: $MODULE_NAMELocalizer.LocalizedKey
  enum LocalizedKey: String, Equatable {
    #warning("Fill enum with needed keys")
    //TODO: Fill enum with needed keys
    case replaceMe
  }
  
  func localizedString(for key: LocalizedKey) -> String {
    return localizedString(for:key.rawValue)
  }
}
