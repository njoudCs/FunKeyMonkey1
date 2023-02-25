

import SwiftUI

@main
struct AppMain: App {
  
  let persistentContainer = CoreDataManager.shared.persistentContainer

  var body: some Scene {
    WindowGroup {
      
      
    TabView {
     // ready()
   Hi5View1()
      
    // LaunchPage().environment(\.managedObjectContext, persistentContainer.viewContext)

      }
    }
  }
}
