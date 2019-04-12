//
//  AppDelegate.swift
//  Crash
//
//  Created by Plunien, Johannes on 12.04.19.
//  Copyright © 2019 eBay Kleinanzeigen. All rights reserved.
//

import GoogleMobileAds
import UIKit

extension DFPBannerView: SomeProtocol {
    typealias Request = GADRequest
}

protocol SomeProtocol: class {
    associatedtype Request
    func load(_ request: Request?)
}

class SomeImplementation<T: SomeProtocol> {
    static func crash(request: T.Request) {}
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window.rootViewController = UIViewController()
        window.makeKeyAndVisible()
        SomeImplementation<DFPBannerView>.crash(request: DFPRequest())
        return true
    }

}
