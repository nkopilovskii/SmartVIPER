//
//  MVPTestViewController.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import UIKit

//MARK: - MVPTestViewController
class MVPTestViewController: UIViewController {
  var presenter: MVPTestPresentation?

  deinit {
    debugPrint("[MVPTest] ViewController has been deinited")
  }
}

//MARK: - MVPTestView protocol implementation
extension MVPTestViewController: MVPTestView {
  
}

