//
//  NKView.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import UIKit

//MARK: - MVC
///MVC View base prtotocol
protocol NKView where Self: UIViewController {
}
//MARK: -

//MARK: - MVP
///MVP View base prtotocol
protocol NKMVPView: NKView {
  associatedtype PresenterType
  var presenter: PresenterType? { get set }
}
//MARK: -

//MARK: - VIPER
///VIPER View base prtotocol
typealias NKViperView = NKMVPView
//MARK: -
