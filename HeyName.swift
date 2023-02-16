
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
          
          
          VStack{
            
            
            
            Text("Welcome \(self.kidsName)")
            
                .font(.system(size: 70 , weight: .heavy, design: .rounded))
                .foregroundColor(Color("yellow"))
            
            
            Image("MonkeyHi")
                .resizable()
                .frame(width: 480, height:650 )
            
             
            
            
            
            
           
            
            
            
        
            NavigationLink(destination: Workout(),
                           label: { StrokeText(text: "Start", width: 1, color: .black)
            }
            )
            
            .frame(width: 220 , height: 100)
            
            .font(.system(size: 50 , weight: .heavy, design: .rounded))
            .background(Color("yellow"))
            
            .foregroundColor(Color.white)
            .cornerRadius(60)
            .shadow( radius: 4.0, x: 7.0, y: 7.0)
            
          } .padding(.top)
          
      
          
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



    
