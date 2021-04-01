//
//  AppIconManager.swift
//  ChangeAppIcon
//
//  Created by yafengzhang on 2021/4/1.
//

import UIKit

enum BMAppIcon: CaseIterable {
   case classic,
   cookie,
   donut,
   cake,
   iceCream
    
    var name: String? {
      switch self {
      case .classic:
        return nil
      case .cookie:
        return "111Icon"
      case .donut:
        return "222Icon"
      case .cake:
        return "cakeIcon"
      case .iceCream:
        return "iceCreamIcon"
      }
    }

    var preview: UIImage {
      switch self {
      case .classic:
        return #imageLiteral(resourceName: "cake@2x.png")
      case .cookie:
        return #imageLiteral(resourceName: "cookie@2x.png")
      case.donut:
        return #imageLiteral(resourceName: "donut@2x.png")
      case .cake:
        return #imageLiteral(resourceName: "cake@2x.png")
      case .iceCream:
        return #imageLiteral(resourceName: "iceCream@2x.png")
      }
    }
}



class AppIconManager: NSObject {
    static let shared:AppIconManager = AppIconManager()
    var current: BMAppIcon {
      return BMAppIcon.allCases.first(where: {
        $0.name == UIApplication.shared.alternateIconName
      }) ?? .classic
    }

    func setIcon(_ appIcon: BMAppIcon, completion: ((Bool) -> Void)? = nil) {
      
      guard current != appIcon,
        UIApplication.shared.supportsAlternateIcons
        else { return }
            
      UIApplication.shared.setAlternateIconName(appIcon.name) { error in
        if let error = error {
          print("Error setting alternate icon \(appIcon.name ?? ""): \(error.localizedDescription)")
        }
        completion?(error != nil)
      }
    }
}
