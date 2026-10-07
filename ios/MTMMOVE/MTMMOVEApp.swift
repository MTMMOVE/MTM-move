import SwiftUI
import WebKit

@main
struct MTMMOVEApp: App {
    var body: some Scene {
        WindowGroup {
            MTMWebView()
                .ignoresSafeArea(.container, edges: .bottom)
        }
    }
}

struct MTMWebView: UIViewRepresentable {
    private let url = URL(string: "https://eternal-den-791.higgsfield.app")!

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        configuration.websiteDataStore = .default()
        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.load(URLRequest(url: url, cachePolicy: .useProtocolCachePolicy))
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {}
}
