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
        SentimentClient.shared.apiKey = ""
        
        MSAppCenter.start("8e5e691d-6686-43b0-a077-b275dcc4c63c", withServices:[
            MSAnalytics.self,
            MSCrashes.self
            ])
        
		return true
	}
}

