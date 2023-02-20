

import SwiftUI
//Test

struct let_sGo: View {
    var body: some View {
      
      NavigationView(){
        ZStack{
          Color("purple").ignoresSafeArea(.all)
          Image("whitebnana")
            .resizable()
           // .scaledToFit()
          VStack{
            
            
            Text("Let's Go")
              .font(.system(size: 70, weight: .heavy, design: .rounded))
              .foregroundColor(Color("yellow"))
              .shadow(color: .black, radius: 6)
            
            HStack{
              
              VStack(spacing: 40){
                
                
                lablee(text: "5 Excersize", image: "Ex.png")
                
                lablee(text: "7 minutes", image: "Time")
              }.padding(.top, 90)
              Image("monkey")
                .resizable()
                .scaledToFit()
                .frame(width: 550)
            }.padding(.bottom,70)
            
            
            NavigationLink(destination: ready_(),
                           label: { StrokeText(text: "Start", width: 1, color: .black)
            })
            
            .frame(width: 220 , height: 100)
            .font(.system(size: 50 , weight: .heavy, design: .rounded))
            .background(Color("yellow"))
            .foregroundColor(Color.white)
            .cornerRadius(60)
          }
        }}.navigationViewStyle(StackNavigationViewStyle())
      .navigationBarHidden(true)
  }
}











struct lablee: View {
  
  @State var text : String
  @State var image : String
  var body: some View {
      VStack{
          Image(image)
          Text(text)
         
           
      }.frame(width: 200, height: 170)
          .background(Rectangle().fill(Color("lable")).shadow(radius: 3))
      
          .cornerRadius(25)
          .font(.system(size: 25, weight: .bold))
    
     
         
  }
}




    


struct let_sGo_Previews: PreviewProvider {
    static var previews: some View {
        let_sGo()
    }
}
