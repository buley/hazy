class SettingsController < UIViewController

    def initWithTabBar
      me = init
      anImage = UIImage.imageNamed("Tab_Bar/settings.png")
      me.tabBarItem = UITabBarItem.alloc.initWithTitle("Settings", image: anImage, tag: 1)
      me
    end

    def viewDidLoad
      label = UILabel.alloc.initWithFrame([[15,100], [200,140]])
      label.text = "Settings view"
      label.font = UIFont.boldSystemFontOfSize(25)
      label.textColor = UIColor.blackColor
      label.textAlignment = UITextAlignmentCenter
      view.addSubview(label)
    end
    
end