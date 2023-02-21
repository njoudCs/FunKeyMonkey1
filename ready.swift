// Created by Lujain Mohammed

import SwiftUI
struct ready: View {
  @State private var hasTimeElapsed = false

  var body: some View {
    
    
    
    HStack{
      if !hasTimeElapsed {
        Image("Tshap-monkey")
          .resizable()
          .scaledToFit()
          .frame(width: 400)
        VStack{
          StrokeText(text: "Ready?", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 30 ,design: .rounded))
            .fontWeight(.heavy)
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 70)
          
          StrokeText(text: "Go", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 30 ,design: .rounded))
            .fontWeight(.heavy)
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 70)
        }
        ZStack{
          Rectangle()
            .frame(width: 290, height: 400)
            .foregroundColor(Color("Label"))
            .opacity(0.2)
            .overlay(RoundedRectangle(cornerRadius: 3)
              .stroke(Color.white, lineWidth: 15))
          
          
          VStack{
            StrokeText(text: "Stand up here", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 30 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.bottom,10)
          }
        } .onAppear(perform: {playSound(sound: "standuphere-app", type: "mp3")})
          .onAppear(perform: {playSound(sound: "ready-app", type: "mp3")})
          .onAppear(perform: {playSound(sound: "go-app", type: "mp3")})


      }
      
      else{
        
        ExercisesStart1()
      }
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        hasTimeElapsed = true
      }
    }
  }
    
  }
  struct ready_Previews: PreviewProvider {
    static var previews: some View {
      ready()
    }
  }
  

