//
//  ViperTestContract.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - ViperTestView protocol
protocol ViperTestView: NKViperView where PresenterType == ViperTestPresentation {
  
}

//MARK: - ViperTestPresentation protocol
protocol ViperTestPresentation: class {
  
}

//MARK: - ViperTestUseCase
protocol ViperTestUseCase: class {
  
}

//MARK: - ViperTestInteractorOutput
protocol ViperTestInteractorOutput: class {
  
}

//MARK: - ViperTestWireframe
protocol ViperTestWireframe: class {
  
}
