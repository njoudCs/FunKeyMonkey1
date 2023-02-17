

import SwiftUI

@main
struct AppMain: App {
  
  let persistentContainer = CoreDataManager.shared.persistentContainer

  var body: some Scene {
    WindowGroup {
      
      
    TabView {
        
      LaunchPage().environment(\.managedObjectContext, persistentContainer.viewContext)

      }
    }
  }
}
