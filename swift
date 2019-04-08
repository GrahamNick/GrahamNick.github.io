override func viewDidoad() {
	super.viewDidLoad()

	let leftSwipe = UISwipeGestureRecognizer(target: self, action #selector(handleSwipes(_:)))
	let rightSwipe = UISwipeGestureRecognizer(target: self, action #selector(handleSwipes(_:)))

	leftSwipe.diretion = .left
	rightSwipe.direction = .right

	view.addGestureRecognizer(leftSwipe)
	view.addGestureRecognizer(rightSwipe)
}
@objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        
    if (sender.direction == .left) {
            print("Swipe Left")
        let labelPosition = CGPoint(x: swipeLabel.frame.origin.x - 50.0, y: swipeLabel.frame.origin.y)
        swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: swipeLabel.frame.size.width, height: swipeLabel.frame.size.height)
    }
        
    if (sender.direction == .right) {
        print("Swipe Right")
        let labelPosition = CGPoint(x: self.swipeLabel.frame.origin.x + 50.0, y: self.swipeLabel.frame.origin.y)
        swipeLabel.frame = CGRect(x: labelPosition.x, y: labelPosition.y, width: self.swipeLabel.frame.size.width, height: self.swipeLabel.frame.size.height)
    }
}


GameScene.swift:

func didMove:
	physicsWorld.gravity = CGVector(dx: 0.0, dy: -6.0)

	*addChild(background)*




class skater:
	func setupPhysicsBody() {
		if let skaterTexture = texture {
			physicsBody = SKPhysicsBody(texture: skaterTexture, size: size)
			physicsBody?.isDynamic = true
			physicsBody?.density = 6.0
			physicsBody?.allowsRotaion = true
			physicsBody?.angularDamping = 1.0

		}
	}
