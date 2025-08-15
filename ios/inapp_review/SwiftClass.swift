//
// © 2024-present https://github.com/cengiz-pz
//
import Foundation
import StoreKit

@available(iOS 16.0, *)
@objcMembers public class SwiftClass : NSObject
{
	static func launch_review_flow() {
		SKStoreReviewController.requestReview()
	}
}
