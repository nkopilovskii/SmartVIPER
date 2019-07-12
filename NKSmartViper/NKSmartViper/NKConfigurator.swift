//
//Copyright (c) 2019 nkopilovskii <nkopilovskii@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in
//all copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//THE SOFTWARE.
//
//  NKConfigurator.swift
//  Example
//
//  Created by Nick Kopilovskii
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import UIKit

//MARK: - MVC
///MVC Base generic configurator class
class NKConfigurator<ViewType: NKView> {
  
  ///Default module init
  func setup() -> ViewType {
    let storyboardName = String(describing: type(of: self))
    let viewName = String(describing: ViewType.self)
    let view = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewName)
    return view as! ViewType
  }
  
  ///Configurate module with existing view
  func configurate(_ view: ViewType) { }
}
//MARK: -


//MARK: - MVP
///MBP Base generic configurator class
class NKMVPConfigurator<ViewType: NKMVPView, PresenterType: NKPresenter<ViewType>>: NKConfigurator<ViewType> {
  
  ///Default module init
  override func setup() -> ViewType {
    let view = super.setup()
    configurate(view)
    return view
  }
  
  ///Configurate module with existing view
  override func configurate(_ view: ViewType) {
    let presenter = NKPresenter<ViewType>(view)
    view.presenter = presenter as? ViewType.PresenterType
  }
}
//MARK: -


//MARK: - VIPER
///VIPER Base generic configurator class
class NKViperConfigurator<ViewType: NKViperView, RouterType: NKRouter<ViewType>, PresenterType: NKViperPresenter<ViewType, RouterType>>: NKMVPConfigurator<ViewType, PresenterType> {
  
  ///Configurate module with existing view
  override func configurate(_ view: ViewType) {
    let router = RouterType(view)
    let presenter = PresenterType(view: view, router: router)
    view.presenter = presenter as? ViewType.PresenterType
  }
}
//MARK: -
