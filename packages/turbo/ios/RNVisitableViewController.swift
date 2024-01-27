//
//  RNVisitableViewController.swift
//  HotwireRNDemo
//
//  Created by Bartłomiej Fryz on 27/06/2022.
//

import Foundation
import ReactNativeHotwiredTurboiOS

public protocol RNVisitableViewControllerDelegate {
  
  func visitableDidAppear(visitable: Visitable)
  
  func visitableDidRender(visitable: Visitable)
  
  func visitableDidDisappear(visitable: Visitable)
  
  func showVisitableActivityIndicator()
  
  func hideVisitableActivityIndicator()
  
}

class RNVisitableViewController: VisitableViewController {
  
  public var delegate: RNVisitableViewControllerDelegate?
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    delegate?.visitableDidAppear(visitable: self)
  }
  
  override func visitableDidRender() {
    super.visitableDidRender()
    delegate?.visitableDidRender(visitable: self)
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    delegate?.visitableDidDisappear(visitable: self)
  }
  
  override func showVisitableActivityIndicator(){
    delegate?.showVisitableActivityIndicator()
  }
  
  override func hideVisitableActivityIndicator(){
    delegate?.hideVisitableActivityIndicator()
  }
  
}
