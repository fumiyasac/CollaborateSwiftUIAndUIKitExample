import Foundation
import KeychainAccess

protocol KeychainAccessProtocol {

    // 新しく取得したJWTの保存処理
    func saveJsonAccessToken(_ token: String)

    // 既に登録されているJWTの削除処理
    func deleteJsonAccessToken()

    // 既に登録されているJWTの存在確認処理
    func existsJsonAccessToken() -> Bool
}

public final class KeychainAccessLocalStore: KeychainAccessProtocol {

    // MARK: - Singleton Instance

    public static let shared = KeychainAccessLocalStore()

    private init() {}

    // MARK: - Properies

    private let jwtTokenPrefix = "Bearer "
    private let keyName = "jsonAccessToken"
    private let keychain = Keychain(service: Bundle.main.bundleIdentifier!)

    // MARK: - Function

    // API管理クラスで利用するJWT文字列を取得する
    public func getAuthenticationHeader() -> String {
        if existsJsonAccessToken() {
            return jwtTokenPrefix + keychain[string: keyName]!
        } else {
            return ""
        }
    }

    // API管理クラスで利用するJWT文字列をキーチェーンへ保存する
    public func saveJsonAccessToken(_ token: String) {
        keychain[string: keyName] = token
    }

    // API管理クラスで利用するJWT文字列をキーチェーンから削除する
    public func deleteJsonAccessToken() {
        keychain[string: keyName] = nil
    }

    // JWT文字列がキーチェーンに存在するかを判定する
    func existsJsonAccessToken() -> Bool {
        return (keychain[string: keyName] != nil)
    }
}
