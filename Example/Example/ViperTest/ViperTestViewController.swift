//
//  ViperTestViewController.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import UIKit

//MARK: - ViperTestViewController
class ViperTestViewController: UIViewController {
  var presenter: ViperTestPresentation?
  
  deinit {
    debugPrint("[ViperTest] ViewController has been deinited")
  }
}

//MARK: - ViperTestView protocol implementation
extension ViperTestViewController: ViperTestView {
  
}
