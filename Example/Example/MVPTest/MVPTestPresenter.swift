//
//  MVPTestPresenter.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - MVPTestPresenter
class MVPTestPresenter: NKPresenter<MVPTestViewController> {
  
  weak var view: MVPTestViewController?
  
  required init<ViewType>(_ view: ViewType) {
    super.init(view)
    self.view = view as? MVPTestViewController
  } 
  
  deinit {
    debugPrint("[MVPTest] Presenter has been deinited")
  }
  
}


//MARK: - MVPTestPresentation protocol implementation
extension MVPTestPresenter: MVPTestPresentation {
  
}
