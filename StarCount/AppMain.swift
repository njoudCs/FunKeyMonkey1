

import SwiftUI

@main
struct AppMain: App {
  
  let persistentContainer = CoreDataManager.shared.persistentContainer

  var body: some Scene {
    WindowGroup {
      
      
    TabView {
     // ready()
 // CountdownView4()
     
      
    LaunchPage().environment(\.managedObjectContext, persistentContainer.viewContext)

      }
    }
  }
}
