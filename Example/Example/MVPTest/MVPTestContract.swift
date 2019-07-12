//
//  MVPTestContract.swift
//  Example
//
//  Created by Nick Kopilovskii on 7/10/19.
//  Copyright © 2019 Nick Kopilovskii. All rights reserved.
//

import Foundation

//MARK: - MVPTestView protocol
protocol MVPTestView: NKMVPView where PresenterType == MVPTestPresentation {
  
}

//MARK: - MVPTestPresentation protocol
protocol MVPTestPresentation: class {
  
}
