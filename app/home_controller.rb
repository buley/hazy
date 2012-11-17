class HomeController < UIViewController

  def loadView
    self.view = UIView.alloc.init
  end

  def viewDidLoad
    self.title = "Home"
    label = UILabel.alloc.initWithFrame([[15,100], [200,140]])
    label.text = "This is my text"
    label.font = UIFont.boldSystemFontOfSize(25)
    label.textColor = UIColor.blackColor
    label.textAlignment = UITextAlignmentCenter

    # Initialize a button
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    # Position the button
    button.frame = [[15, 300], [200,50]]
    # Sets the button title
    button.setTitle("Move to next view", forState: UIControlStateNormal)
    button.addTarget(self, action: "moveToChildView:", forControlEvents: UIControlEventTouchUpInside)

    # Adds the label to the UIViewController
    view.addSubview(label)

    # Adds the button to the UIViewContoller
    view.addSubview(button)

  end

  def moveToChildView(sender)
    self.parentViewController.pushViewController(UIViewController.alloc.init, animated: true)
  end

end