class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    #navigationController = UINavigationController.alloc.initWithRootViewController(HomeController.new)
    #@window.rootViewController = navigationController
    tabController = UITabBarController.alloc.init
    vc1 = HomeController.alloc.initWithTabBar
    vc2 = TableController.alloc.initWithTabBar 
    vc2 = SettingsController.alloc.initWithTabBar 

    # Adds controllers to tab bar
    tabController.viewControllers = [ vc1, vc2 ]

    @window.rootViewController = tabController
    @window.makeKeyAndVisible
    true
  end
end