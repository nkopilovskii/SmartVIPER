//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  $MODULE_NAMEInteractor.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation

//MARK: - $MODULE_NAMEInteractor
class $MODULE_NAMEInteractor: NKSVInteractor<$MODULE_NAMEPresenter> {
  weak var output: $MODULE_NAMEInteractorOutput?
  
  required init(output: InteractorOutputType?) {
    super.init(output: output)
    self.output = output
  }
}

//MARK: - $MODULE_NAMEUseCase protocol implementation
extension $MODULE_NAMEInteractor: $MODULE_NAMEUseCase {
  //TODO: Implement code
}
