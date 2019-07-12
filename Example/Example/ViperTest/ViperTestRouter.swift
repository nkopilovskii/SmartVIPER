//
//  ViperTestRouter.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - ViperTestViewController
class ViperTestRouter: NKRouter<ViperTestViewController> {
  
  deinit {
    debugPrint("[ViperTest] Router has been deinited")
  }
}

//MARK: - ViperTestWireframe protocol implementation
extension ViperTestRouter: ViperTestWireframe {

}
