//  🐍NKSmartViper
//  Generated with NKSmartViperCodeGen
//
//  TestViewController.swift
//
//  Created by NickKopilovskii
//  Copyright © NickKopilovskii. All rights reserved.
//

import UIKit

//MARK: - TestViewController life cycle
class TestViewController: UIViewController {
  var presenter: TestPresentation?
  
  @IBOutlet weak var lblTitle: UILabel!
  @IBOutlet weak var txtContent: UITextView!
  @IBOutlet weak var btnAlert: UIButton!
  
  @IBOutlet weak var lblSwitchLanguage: UILabel!
  @IBOutlet weak var switcherLanguage: UISwitch!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func btnAlertTouchUpInside(_ sender: UIButton) {
    presenter?.didTapShowAlert()
  }
  
  @IBAction func switcherLanguageValueChanged(_ sender: UISwitch) {
    presenter?.didTapSwitchLanguage()
  }
  
}

//MARK: - TestView protocol implementation
extension TestViewController: TestView {
  var switchLanguageIsOn: Bool {
    get {
      return switcherLanguage.isOn
    }
    set {
      switcherLanguage.isOn = newValue
    }
  }
  
  func localizeView(_ localizer: TestLocalizer) {
    lblTitle.text = localizer.localizedString(for: .lblTitle)
    txtContent.text = localizer.localizedString(for: .txtContent)
    btnAlert.setTitle(localizer.localizedString(for: .btnAlert), for: .normal)
    lblSwitchLanguage.text = localizer.localizedString(for: .lblSwitchLanguage)
  }
  
  
}




