//
//  AppDelegate.swift
//  CollaborateSwiftUIAndUIKitExample
//
//  Created by 酒井文也 on 2021/06/14.
//

import UIKit

// TODO: MultiModule＆SwiftUIで構成する
// TODO: 「The Composable Architecture」を利用した状態管理をする

// MEMO: Multi-Module化を進めていく上の参考資料
// ① まっさらな一番最初のXcodeプロジェクトをSwiftPMでマルチモジュール化の準備をする
// https://zenn.dev/kalupas226/articles/73118709e316ad
// ② Multi-Module化をしたプロジェクト事例解説記事
// https://medium.com/@artemkvasnetcky/ios-microapp-architecture-part-1-50cd2bcaccd6
// https://medium.com/@artemkvasnetcky/ios-microapps-architecture-part-2-1cc2ceefaaec
// https://medium.com/@artemkvasnetcky/ios-microapps-architecture-part-3-f7a30b65077
// https://medium.com/@artemkvasnetcky/ios-microapps-architecture-part-4-354f76821e82
// ③ クラシルリワードアプリにおけるProject構成の事例
// https://tech.dely.jp/entry/2023/05/30/113128

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {}
}
