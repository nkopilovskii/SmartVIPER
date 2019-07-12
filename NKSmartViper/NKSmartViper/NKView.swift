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
//  NKView.swift
//  Example
//
//  Created by Nick Kopilovskii
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
