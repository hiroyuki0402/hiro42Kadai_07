//
//  CustomTabBarController.swift
//  Exericise_07
//
//  Created by akio0911 on 2021/09/17.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let viewControllers = viewControllers else { return }
        (viewControllers[0] as? ViewController)?.configure(calculator: Addition())
        (viewControllers[1] as? ViewController)?.configure(calculator: Subtraction())
    }
}
