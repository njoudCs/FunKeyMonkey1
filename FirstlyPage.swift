
import SwiftUI

//extension   UserDefaults {
//  var OnboardingPageShown: Bool {
//    get {
//      return (UserDefaults.standard.value(forKey: "OnboardingPageShown") as? Bool) ??
//      false
//    }
//    set {
//      UserDefaults.standard.setValue(newValue, forKey: "OnboardingPageShown")
//    }
//  }
//}

struct FirstlyPage: View {
  
  @Environment(\.managedObjectContext) private var viewContext
  
  // boolean variable to show First Page view

  @State  var showHeyName: Bool = false
  @State private var isAlert = false
  @Environment(\.managedObjectContext) var moc
  @Environment(\.presentationMode) var presentationMode
  
  // string variable to store Name
  @State private var kidsName: String = ""
  @State private var idsName: String = ""

 
  
  var body: some View {
    
//    if UserDefaults.standard.OnboardingPageShown {
//      FirstlyPage()
//    }else{
//      OnboardingPage()}
    
    NavigationView{
    
    ZStack{
      
     (Color("purple"))
        .ignoresSafeArea()
      
      Image("Back2")
        .resizable()
      
    
        
        VStack(spacing: -30) {
          
          
          
          StrokeText(text: "What's your name?", width: 2, color: .black)
          .foregroundColor(Color("yellow"))
          
          .font(.system(size: 70 ,design: .rounded))
          .fontWeight(.heavy)
          
         
          

          
          
          
          TextField("Write your name here" , text: $kidsName, onCommit: {
            self.showHeyName = true
          })
          .padding(30)
          .background(.white)
          .cornerRadius(50)
          .autocorrectionDisabled()
      
          .frame(width: 450 , height: 500)
       
       
          
          NavigationLink (destination: HeyName(kidsName: $kidsName), isActive: $showHeyName){
            //  label: do {Text("Next")}
            
            
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
              Alert(title: Text("Alert"), message: Text("No text field should be empty"), dismissButton: .default(Text("Ok")))
            }

         
          
          
        }
      
      
    }
    
  }.navigationViewStyle(StackNavigationViewStyle())
    
  }
  //Start functin
  
  func saveName() {

    if self.kidsName == ""
    {self.isAlert = true
        return
    }
    let userInfo = MonkeyCoreData(context: self.moc)
    userInfo.kidsName = self.kidsName
    
    do {
        try self.moc.save()
    } catch {
        print("whoops \(error.localizedDescription)")
    }
     
    
  }

  
  
//End function
  }





  
  struct FirstlyPage_Previews: PreviewProvider {
    static var previews: some View {
      FirstlyPage()
    }
  }
  
  
  

