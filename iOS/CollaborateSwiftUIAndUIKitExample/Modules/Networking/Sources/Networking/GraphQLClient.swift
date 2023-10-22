import Foundation
import Apollo
import LocalStore

public final class GraphQLClient {

    // MARK: - Singleton Instance

    public static let shared = GraphQLClient()

    private init() {}

    // MARK: - Property

    let apollo = {
        // MEMO: Client作成部分に関する詳細な設定については公式ドキュメントを参考にすると良さそうです。
        // ドキュメント: https://www.apollographql.com/docs/ios/networking/client-creation
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = DefaultInterceptorProvider(
            client: URLSessionClient(),
            store: store
        )

        // MEMO: JWT文字列をApolloのAuthenticationHeaderに設定する
        let authenticationHeader = KeychainAccessLocalStore.shared.getAuthenticationHeader()

        // MEMO: エンドポイントはすでにサンプルとして公開されているものを利用する形としています。
        // 動作コード: ""
        let url = URL(string: "")!
        let transport = RequestChainNetworkTransport(
            interceptorProvider: provider,
            endpointURL: url,
            additionalHeaders: ["Authorization": authenticationHeader]
        )
        return ApolloClient(networkTransport: transport, store: store)
    }()
}
