//
//  HomeViewController.swift
//  RoterCoordinator
//
//  Created by Sergey Kharlamov on 21.07.2021.
//

import UIKit

final class AppCoordinator: BaseCoordinator {
    
    override func start(with option: DeepLinkOption?) {
        runLoginFlow()
    }
    
    private func runLoginFlow() {
        let coordinator = LoginCoordinator(router: router)
        addDependency(coordinator)
        coordinator.start()
    }
}
