//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

import UIKit

protocol Presentable {
  
  var toPresent: UIViewController? { get }
}

extension UIViewController: Presentable {
  
  var toPresent: UIViewController? {
    return self
  }
}
