import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var slidingTextLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func slideTextButtonTapped(sender: UIButton) {
		self.slidingTextLabel.slideInFromLeft()
//		self.slidingTextLabel.slideInFromLeft(duration: 1.0, completionDelegate: self) // Use this line to specify a duration or completionDelegate
		self.slidingTextLabel.text = "Sliding Text!"
	}
	
	// This function is only called if you set a completionDelegate in your slideInFromLeft() call 
	override func animationDidStop(anim: CAAnimation!, finished flag: Bool) {
		println("Animation stopped")
	}
}

