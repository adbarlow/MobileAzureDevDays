//
//  AppDelegate.swift
//  MobileAzureDevDays
//
//  Created by Colby Williams on 9/22/17.
//  Copyright © 2017 Colby Williams. All rights reserved.
//

import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        SentimentClient.shared.apiKey = "b547940b49a9479681839ca9d57fdf40"
        
        MSAppCenter.start("d681d3dd-4b62-48e9-9d93-97df0fea71d4", withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
        
		return true
	}
}

