import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    
    GeneratedPluginRegistrant.register(with: self)
    
//    UIApplication.shared.registerUserNotificationSettings(UIUserNotificationSettings(types: UIUserNotificationType.alert, categories: nil))
//
//    UIApplication.shared.setMinimumBackgroundFetchInterval(3600)

    let assertsPath = NSHomeDirectory() + "/Documents/flutter_assets"
    let assertsUrl = URL(fileURLWithPath: assertsPath)

    let dartPro = FlutterDartProject.init(flutterAssetsURL: assertsUrl)

    let vc = FlutterViewController.init(project: dartPro, nibName: nil, bundle:nil)

    self.window = UIWindow.init(frame: UIScreen().bounds)
    self.window.rootViewController = vc
    self.window.makeKeyAndVisible()
//
//    EngineManager.getAssets()
//    EngineManager.checkVersion()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}

class EngineManager {
    static let shared = EngineManager()
    
    static let _path = "http://192.168.88.31:8080/public/version.json"

    init(){}
    
    class func getAssets(){
        
        let session:URLSession! = URLSession()
        let url:URL! = URL(string: self._path)
        let completionHandler = {(_ data:Data?,_ resp:URLResponse?, _ err:Error?) -> Void in
            
            do {
                
                if(data == nil){
                    return
                }
                
                let jobData: Any = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                print(jobData)
                
            } catch {
                
            }
            
        }
        
        let _:URLSessionTask! = session.dataTask(with: url, completionHandler: completionHandler)
    }
    
    class func checkVersion(){
        print("checkVersion");
    }
}
