// Created by Lujain Mohammed

import SwiftUI
struct ready: View {
  @State private var hasTimeElapsed = false
  @AppStorage("KID_NAME") var kidName: String = ""
  var body: some View {
    
    
    
    ZStack{
      
      if !hasTimeElapsed {
        CameraView().ignoresSafeArea(.all)
        
        
        StrokeText(text: "Are you ready  \(kidName) ? ", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 60 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.bottom, 800)
        
        
        Image("Tshap-monkey")
          .resizable()
          .scaledToFit()
          .frame(width: 450)
          .padding(.trailing, 350)
          .padding(.top, 165)
        
        ZStack{
        
          
          Rectangle()
          .frame(width: 320, height: 600)
          .foregroundColor(Color("Label"))
          .opacity(0.2)
          .overlay(RoundedRectangle(cornerRadius: 3)
          .stroke(Color.white, lineWidth: 15))
          .padding(.leading, 400)
          
          HStack{
          StrokeText(text: "Stand up here", width: 1, color: .black)
          .foregroundColor(Color("yellow"))
          .font(.system(size: 30 ,design: .rounded))
          .fontWeight(.heavy)
          .padding(.leading,400)
          }
          
        }
        
        
        
         
         
         .onAppear(perform: {playSouund(sound: "letsgo-app", type: "mp3")})
         
         
         }
         
         else{
         
      ExercisesStart1()
         }
         }
       
        
        
        .onAppear(){
          DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
            hasTimeElapsed = true}}
      }
      
    }

  
  struct ready_Previews: PreviewProvider {
    static var previews: some View {
      ready()
    }
  }
  

