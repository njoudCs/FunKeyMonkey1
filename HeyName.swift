
import SwiftUI

struct HeyName: View {
  @Binding var kidsName: String
  @Environment(\.managedObjectContext) var moc
  @FetchRequest(entity: MonkeyCoreData.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \MonkeyCoreData.kidsName, ascending: true)]) var users: FetchedResults<MonkeyCoreData>
  @State private var showingAddUser = false
    var body: some View {
       
      
      NavigationView{
        
        ZStack{
  
          (Color("purple"))
              .ignoresSafeArea()
          
          Image("Back")
              .resizable()
          
              .frame(width: 1194, height: 834)
          
          VStack{
            
            
            Image("monkey")
            
            
            
            
            Text(self.kidsName)
            
                .font(.system(size: 70 , weight: .heavy, design: .rounded))
                .foregroundColor(Color("yellow"))
            
            
            
        
            
//            NavigationLink(destination: WelcomePage_2(user: user),
//                           label: {Text("Start")
//            }
//            )
//
//            .frame(width: 220 , height: 100)
//
//            .font(.system(size: 50 , weight: .heavy, design: .rounded))
//            .background(Color("frontyello"))
//            .foregroundColor(Color.white)
//            .cornerRadius(60)

            
        }
          
      
          
        }
        
        
        
      }.navigationViewStyle(StackNavigationViewStyle())

    }
}

struct HeyName_Previews: PreviewProvider {
  // when using @Binding, @State static must be used to show preview
  @State static var kidsName: String = ""
    static var previews: some View {
      HeyName(kidsName: $kidsName)
      
    }
}



    
