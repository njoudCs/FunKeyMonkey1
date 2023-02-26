
import SwiftUI


struct FirstlyPage: View {
  
  @Environment(\.managedObjectContext) private var viewContext
  
  // boolean variable to show First Page view

  @State  var showHeyName: Bool = false
  @State private var isAlert = false
  @Environment(\.managedObjectContext) var moc
  @Environment(\.presentationMode) var presentationMode
  
  // string variable to store Name
  @State private var kidTextField: String = ""
  @State private var idsName: String = ""
  @AppStorage("KID_NAME") var kidName: String = ""


  var body: some View {

    
    NavigationView{
    
    ZStack{
      
     (Color("purple"))
        .ignoresSafeArea()
      
      Image("Back")
        .resizable()
        .ignoresSafeArea()
      
    
        
        VStack(spacing: -30) {
          
          
          
          StrokeText(text: "What's your name?", width: 2, color: .black)
          .foregroundColor(Color("yellow"))
          
          .font(.system(size: 70 ,design: .rounded))
          .fontWeight(.heavy)
          
         
          

          
          
          
          TextField("Write your name here" , text: $kidTextField, onCommit: {
            self.showHeyName = true
          })
          
          .padding(30)
          .background(.white)
          .cornerRadius(50)
          .autocorrectionDisabled()
      
          .frame(width: 450 , height: 500)
       
       
          
          NavigationLink (destination: HeyName(), isActive: $showHeyName){
              label: do {Text("Next")}
            
            
            Button(action: {
              saveName()
              self.showHeyName = true
            }){
              
              StrokeText(text: "Next", width: 1, color: .black)
              
              
              

            }
          }
          
          .frame(width: 220 , height: 100)
          
          .font(.system(size: 50 , weight: .heavy, design: .rounded))
          .background(Color("yellow"))
          .foregroundColor(Color.white)
          .cornerRadius(60)
      
          .shadow( radius: 4.0, x: 7.0, y: 7.0)
          
          
          
          
          
            .alert(isPresented: $isAlert) { () -> Alert in
              Alert(title: Text("Alert"), message: Text("Please enter your name"), dismissButton: .default(Text("Ok")))
            }

         
          
          
        }
      
      
    }
  
    
  }.navigationViewStyle(StackNavigationViewStyle())
      .accentColor(Color("yellow"))
    
  }
  //Start functin
  
  func saveName() {

    if self.kidTextField == ""
    {self.isAlert = true
        return
    }
    
    // UserDefaults
    kidName = kidTextField
    
    
    // CoreData
//    let userInfo = MonkeyCoreData(context: self.moc)
//    userInfo.kidsName = self.kidsName
//
//    do {
//        try self.moc.save()
//    } catch {
//        print("whoops \(error.localizedDescription)")
//    }
     
    
  }

  
  
//End function
  }





  
  struct FirstlyPage_Previews: PreviewProvider {
    static var previews: some View {
      FirstlyPage()
    }
  }
  
  
  

