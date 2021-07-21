//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

protocol Coordinator: class {

    var router: Routable { get }

    func start()
    func start(with deepLink: DeepLinkOption?)
}

extension Coordinator {
    
    func start() {
        start(with: nil)
    }
}
