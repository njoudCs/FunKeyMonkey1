import SwiftUI

struct FirstlyPage: View {
  
  @Environment(\.managedObjectContext) private var viewContext
  
  // boolean variable to show First Page view

  @State  var showHeyName: Bool = false
  @State private var isAlert = false
  @Environment(\.managedObjectContext) var moc
  @Environment(\.presentationMode) var presentationMode
  
  // string variable to store Name
  @State private var kidsName: String = ""
  
 
  
  var body: some View {
    
    NavigationView{
    
    ZStack{
      
     (Color("purple"))
        .ignoresSafeArea()
      
      Image("Back")
        .resizable()
        .frame(width: 1194, height: 834)
      
    
        
        VStack(spacing: -80) {
          
          Text("What's your name ?")
            .font(.system(size: 70 , weight: .heavy, design: .rounded))
            .foregroundColor(Color("yellow"))
            .shadow(color: .black, radius: 100 )
          
          
          
          TextField("Write your name here" , text: $kidsName, onCommit: {
            self.showHeyName = true
          })
          .padding(30)
          .cornerRadius(50)
          .autocorrectionDisabled()
      
          .frame(width: 450 , height: 500)
          
       
          
          Button ("next") {
            saveName()
          }.foregroundColor(Color.white)
            .font(.system(size: 50 , weight: .heavy, design: .rounded))
            .foregroundColor(Color.white)
            .background(Color("yellow"))
            .alert(isPresented: $isAlert) { () -> Alert in
              Alert(title: Text("Alert"), message: Text("No text field should be empty"), dismissButton: .default(Text("Ok")))
          }
          
          NavigationLink (destination: HeyName(kidsName: $kidsName), isActive: $showHeyName){
            label: do {Text("Next")}
            EmptyView()
          }

          .cornerRadius(60)
          .shadow(color: .black, radius: 2, x: 2, y: 2)
          
          
        }
      
      
    }
    
  } .navigationViewStyle(StackNavigationViewStyle())
    
  }
  
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

  
  }
  
  struct FirstlyPage_Previews: PreviewProvider {
    static var previews: some View {
      FirstlyPage()
    }
  }
  
  
  

