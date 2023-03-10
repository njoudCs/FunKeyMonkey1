
import SwiftUI



struct HeyName: View {
  
  
  @AppStorage("KID_NAME") var kidName: String = ""
  @Environment(\.managedObjectContext) var moc
  @FetchRequest(entity: MonkeyCoreData.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \MonkeyCoreData.kidsName, ascending: true)]) var users: FetchedResults<MonkeyCoreData>
  @State private var showingAddUser = false
  @State private var isPresented: Bool = false
  

  
    var body: some View {
       
     
      
    
        
        ZStack{
  
          (Color("purple"))
              .ignoresSafeArea()
          
       
          
          Image("Back")
              .resizable()
              .ignoresSafeArea()
          
       
           
          
          VStack(){
            
            
            StrokeText(text: "Welcome \(kidName)", width: 2, color: .black)

//          
            
                .font(.system(size: 70 , weight: .heavy, design: .rounded))
                .foregroundColor(Color("yellow"))
                .padding(.top , 120)
            ZStack{
              
              WorkoutView1()
              Image ("face-monkey")
                .resizable()
                .frame(width: 80, height: 55)
                .padding(.bottom, 150)
            }
              
//            Image("MonkeyHi")
//                .resizable()
//                .frame(width: 480, height:650 )
            
             
            
///

//            NavigationLink(destination: Workout(),
//                           label: { StrokeText(text: "Start", width: 1, color: .black)
//            }
//            )
            
            StrokeText(text: "Start", width: 1, color: .black)
              .onTapGesture {
              isPresented = true
            }
            
            .frame(width: 220 , height: 100)
            
            .font(.system(size: 50 , weight: .heavy, design: .rounded))
            .background(Color("yellow"))
            
            .foregroundColor(Color.white)
            .cornerRadius(60)
            .shadow( radius: 4.0, x: 7.0, y: 7.0)
            
          } .padding(.bottom , 138)
          
      
            
        }.fullScreenCover(isPresented: $isPresented) {
          Workout()
        }
        
        
    

    }
}

struct HeyName_Previews: PreviewProvider {
  // when using @Binding, @State static must be used to show preview
  @State static var kidsName: String = ""
    static var previews: some View {
      HeyName()
      
    }
}



    
