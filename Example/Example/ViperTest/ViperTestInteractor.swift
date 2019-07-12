//
//  ViperTestInteractor.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation


//MARK: - ViperTestInteractor
class ViperTestInteractor: NKInteractor<ViperTestPresenter> {
  weak var output: ViperTestInteractorOutput?
  
  required init<OutputType>(output: OutputType?) {
    super.init(output: output)
    self.output = output as? ViperTestInteractorOutput
  }
  
  deinit {
    debugPrint("[ViperTest] Interactor has been deinited")
  }
}

//MARK: - ViperTestUseCase protocol implementation
extension ViperTestInteractor: ViperTestUseCase {
  
}
