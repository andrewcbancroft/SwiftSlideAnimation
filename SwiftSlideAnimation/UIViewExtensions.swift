import UIKit

extension UIView {
	// Name this function in a way that makes sense to you... 
	// slideFromLeft, slideRight, slideLeftToRight, etc. are great alternative names
	func slideInFromLeft(duration: NSTimeInterval = 1.0, completionDelegate: AnyObject? = nil) {
		// Create a CATransition animation
		let slideInFromLeftTransition = CATransition()
		
		// Set its callback delegate to the completionDelegate that was provided (if any) 
		if let delegate: AnyObject = completionDelegate {
			slideInFromLeftTransition.delegate = delegate
		}
		
		// Customize the animation's properties
		slideInFromLeftTransition.type = kCATransitionPush
		slideInFromLeftTransition.subtype = kCATransitionFromLeft
		slideInFromLeftTransition.duration = duration
		slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		slideInFromLeftTransition.fillMode = kCAFillModeRemoved
		
		// Add the animation to the View's layer
		self.layer.addAnimation(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
	}
}