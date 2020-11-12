////
////  WKWebView+BlocksKit.m
////  BlocksKit
////
//
//#import "WKWebView+BlocksKit.h"
//#import "A2DynamicDelegate.h"
//#import "NSObject+A2DynamicDelegate.h"
//#import "NSObject+A2BlockDelegate.h"
//
//#pragma mark Custom delegate
//
//@interface A2DynamicWKNavigationDelegate : A2DynamicDelegate <WKNavigationDelegate>
//@end
//
//@implementation A2DynamicWKNavigationDelegate
//
//- (BOOL)webView:(WKWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(WKNavigationType)navigationType {
//	BOOL ret = YES;
//	
//	id realDelegate = self.realDelegate;
//	if (realDelegate && [realDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)])
//		[realDelegate webView:webView decidePolicyForNavigationAction:nil decisionHandler:nil];
//
//	BOOL (^block)(WKWebView *, NSURLRequest *, WKNavigationType) = [self blockImplementationForMethod:_cmd];
//	if (block)
//		ret &= block(webView, request, navigationType);
//
//	return ret;
//}
//
//- (void)webViewDidStartLoad:(WKWebView *)webView {
//	id realDelegate = self.realDelegate;
//	if (realDelegate && [realDelegate respondsToSelector:@selector(webViewDidStartLoad:)])
//		[realDelegate webViewDidStartLoad:webView];
//
//	void (^block)(WKWebView *) = [self blockImplementationForMethod:_cmd];
//	if (block) block(webView);
//}
//
//- (void)webViewDidFinishLoad:(WKWebView *)webView {
//	id realDelegate = self.realDelegate;
//	if (realDelegate && [realDelegate respondsToSelector:@selector(webViewDidFinishLoad:)])
//		[realDelegate webViewDidFinishLoad:webView];
//
//	void (^block)(WKWebView *) = [self blockImplementationForMethod:_cmd];
//	if (block) block(webView);
//}
//
//- (void)webView:(WKWebView *)webView didFailLoadWithError:(NSError *)error {
//	id realDelegate = self.realDelegate;
//	if (realDelegate && [realDelegate respondsToSelector:@selector(webView:didFailLoadWithError:)])
//		[realDelegate webView:webView didFailLoadWithError:error];
//
//	void (^block)(WKWebView *, NSError *) = [self blockImplementationForMethod:_cmd];
//	if (block) block(webView, error);
//}
//
//@end
//
//#pragma mark Category
//
//@implementation WKWebView (BlocksKit)
//
//@dynamic bk_shouldStartLoadBlock, bk_didStartLoadBlock, bk_didFinishLoadBlock, bk_didFinishWithErrorBlock;
//
//+ (void)load
//{
//	@autoreleasepool {
//		[self bk_registerDynamicDelegate];
//		[self bk_linkDelegateMethods:@{
//			@"bk_shouldStartLoadBlock": @"webView:decidePolicyForNavigationAction:decisionHandler:",
//			@"bk_didStartLoadBlock": @"webView:didCommitNavigation:",
//			@"bk_didFinishLoadBlock": @"webView:didFinishNavigation:",
//			@"bk_didFinishWithErrorBlock": @"webView:didFailNavigation:withError:"
//		}];
//	}
//}
//
//@end
