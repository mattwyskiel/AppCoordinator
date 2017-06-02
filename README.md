# AppCoordinator

A better way to manage app navigation, and a great way to get rid of Massive View Controller.

## How to use

- Install:
  - CocoaPods: `pod 'AppCoordinator'`
  - Carthage: `github "mattwyskiel/AppCoordinator"`


- Implement `TabCoordinator` protocol for each tab you would like (note: this library only supports tab-based apps at the moment, more to come soon!)

```swift
  class AboutTabCoordinator: TabCoordinator {
    var rootController: UINavigationController
    var tabBarItem: UITabBarItem = UITabBarItem(title: "About", image: UIImage(named: "AboutTabBarIcon"), selectedImage: UIImage(named: "AboutTabBarIcon_Filled")

    init() {
      let homeVC = AboutRootViewController()
      rootController = UINavigationController(rootViewController: homeVC)
      homeVC.delegate = self
      rootController.tabBarItem = tabBarItem
    }   
  }
```

- Setup the `TabAppCoordinator` in your app delegate

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
  // Override point for customization after application launch.
  configureAppServices()
  self.window = UIWindow()

  configureAppStyle()

  self.tabBarController = UITabBarController()
  self.window?.rootViewController = tabBarController

  self.appCoordinator = AppCoordinator(tabBarController: tabBarController)
  self.appCoordinator.start()

  self.window?.makeKeyAndVisible()
  return true
}
```

For more,
