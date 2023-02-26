

import SwiftUI
//Test

struct let_sGo: View {
    var body: some View {
      
      
        ZStack{
          Color("purple").ignoresSafeArea(.all)
          Image("Back")
            .resizable()
            .ignoresSafeArea()
           
           // .scaledToFit()
          VStack{
            
            StrokeText(text: "Let's Go", width: 2, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 70 ,design: .rounded))
            .fontWeight(.heavy)
            
            
            HStack{
              
              VStack(spacing: 40){
                
                
                lablee(text: "5 Exercises", image: "Ex.png")
                
                lablee(text: "6 Minutes", image: "Time")
              }.padding(.top, 90)
              Image("Tshap-monkey")
                .resizable()
                .scaledToFit()
                .frame(width: 550)
            }.padding(.bottom,70)
            
            
            
            
            NavigationLink(destination: ready(),
                           label: { StrokeText(text: "Go", width: 1, color: .black)
            })
            
            .frame(width: 220 , height: 100)
            .font(.system(size: 50 , weight: .heavy, design: .rounded))
            .background(Color("yellow"))
            .foregroundColor(Color.white)
            .cornerRadius(60)
            .shadow( radius: 4.0, x: 7.0, y: 7.0)
          }
        }
  }
}











//struct lablee: View {
//
//  @State var text : String
//  @State var image : String
//  var body: some View {
//
//
//    ZStack{
//      Color("purple").ignoresSafeArea(.all)
//      Image("Back")
//        .resizable()
//        .ignoresSafeArea()
//      // .scaledToFit()
//      VStack{
//
//
//        StrokeText(text: "Let's go", width: 1, color: .black)
//          .font(.system(size: 70, weight: .heavy, design: .rounded))
//          .foregroundColor(Color("yellow"))
//
//
//        HStack{
//
//          VStack(spacing: 40){
//
//
//            lablee(text: "5 Excersize", image: "Ex.png")
//
//            lablee(text: "7 minutes", image: "Time")
//          }.padding(.top, 90)
//          Image("monkey")
//            .resizable()
//            .scaledToFit()
//            .frame(width: 550)
//        }.padding(.bottom,70)
//
//
//        NavigationLink(destination: ready(),
//                       label: { StrokeText(text: "Start", width: 1, color: .black)
//        })
//
//        .frame(width: 220 , height: 100)
//        .font(.system(size: 50 , weight: .heavy, design: .rounded))
//        .background(Color("yellow"))
//        .foregroundColor(Color.white)
//        .cornerRadius(60)
//      }
//
//    }
//  }
  
  
  
  
  
  
  
  
  
  
  
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

