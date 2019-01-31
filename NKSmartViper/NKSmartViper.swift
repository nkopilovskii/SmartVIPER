//  🐍 NKSmartViper
//
//  Base.swift
//  
//
//  Created by Nick Kopilovskii on 1/28/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//  https://github.com/nkopilovskii/SmartVIPER

import UIKit

protocol NKSVView: class where Self: UIViewController {
  associatedtype PresenterType
  var presenter: PresenterType? { get set }
}

class NKSVPresenter<V, R> {
  typealias ViewType = V
  typealias RouterType = R
  
  required init<ViewType, RouterType>(view: ViewType, router: RouterType) {}
}

class NKSVInteractor<O> {
  typealias InteractorOutputType = O
  required init(output: InteractorOutputType?) {}
}

class NKSVRouter<V> {
  typealias ViewType = V
  
  weak var viewController: UIViewController?
  required init<ViewType>(view: ViewType) {
    viewController = view as? UIViewController
  }
}

class NKSVConfigurator<ViewType: NKSVView, RouterType: NKSVRouter<ViewType>, PresenterType: NKSVPresenter<ViewType, RouterType>> {
  
  func setup() -> ViewType {
    let storyboardName = String(describing: type(of: self))
    let viewName = String(describing: ViewType.self)
    let view = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewName) as! ViewType
    let router = RouterType(view: view)
    let presenter = PresenterType(view: view, router: router)
    view.presenter = presenter as? ViewType.PresenterType
    
    return view
  }
}
