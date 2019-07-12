//
//  NKConfigurator.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
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
