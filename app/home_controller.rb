class HomeController < UIViewController

    def initWithTabBar
      me = init
      anImage = UIImage.imageNamed("Tab_Bar/home.png")
      me.tabBarItem = UITabBarItem.alloc.initWithTitle("Home", image: anImage, tag: 1)
      me
    end

    def viewDidLoad
      label = UILabel.alloc.initWithFrame([[15,100], [200,140]])
      label.text = "Home view"
      label.font = UIFont.boldSystemFontOfSize(25)
      label.textColor = UIColor.blackColor
      label.textAlignment = UITextAlignmentCenter
      view.addSubview(label)
    end

end