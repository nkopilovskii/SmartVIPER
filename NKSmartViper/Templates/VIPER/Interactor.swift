//  🐍NKSmartViper 2.0
//  Generated with NKSmartViperCodeGen
//  https://github.com/nkopilovskii/SmartVIPER
//  Copyright ©NickKopilovskii. All rights reserved.
//
//  $MODULE_NAMEConfigurator.swift
//
//  Created by $USER
//  Copyright © $USER. All rights reserved.
//

import Foundation


//MARK: - $MODULE_NAMEInteractor
class $MODULE_NAMEInteractor: NKInteractor<$MODULE_NAMEPresenter> {
  weak var output: $MODULE_NAMEInteractorOutput?
  
  required init<OutputType>(output: OutputType?) {
    super.init(output: output)
    self.output = output as? $MODULE_NAMEInteractorOutput
  }
  
  deinit {
    debugPrint("[$MODULE_NAME] Interactor has been deinited")
  }
}

//MARK: - $MODULE_NAMEUseCase protocol implementation
extension $MODULE_NAMEInteractor: $MODULE_NAMEUseCase {
  
}
