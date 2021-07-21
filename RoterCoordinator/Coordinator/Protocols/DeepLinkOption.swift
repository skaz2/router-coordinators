//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

import Foundation

public protocol DeepLinkOption {
  
  static func build(with userActivity: NSUserActivity) -> DeepLinkOption?
  static func build(with dict: [String: AnyObject]?) -> DeepLinkOption?
}
