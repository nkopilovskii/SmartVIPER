//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestRouter.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import UIKit

//MARK: - TestViewController
class TestRouter: NKSVRouter<TestViewController> {}

//MARK: - TestWireframe protocol implementation
extension TestRouter: TestWireframe {
  func showAlert(_ title: String?, message: String?) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
    
    viewController?.present(alert, animated: true)
  }
  
}
