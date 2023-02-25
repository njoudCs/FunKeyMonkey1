


import SwiftUI


/*
struct Hi5View1: View {
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false
 
  
    var body: some View {

      ZStack {
        
        
        
        
        CameraView {
          
          overlayPoints = $0
          gameLogicController.checkStarsCount($0.count)
        }
        .overlay(
          FingersOverlay(with: overlayPoints)
            .foregroundColor(.orange)
        )
        .edgesIgnoringSafeArea(.all)
        
        StarAnimator(makeItRain: $gameLogicController.makeItRain) {
          gameLogicController.didRainStars(count: $0)
        }
        
        VStack(spacing:100){
         
            Image ("monkey-hi5")
              .resizable()
              .frame(width: 450, height: 650)
            .padding(.trailing, 400.0)
            
      
          StrokeText(text: "Give me high five", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 45 ,design: .rounded))
            .fontWeight(.heavy)
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 50)
        }
      }
      .onAppear {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
      
     
   Image("")
//    .resizable()
//    .imageScale(.large)
//    .foregroundColor(.white)
//    .frame(width: 200, height: 200)
//    .shadow(radius: 5)
    .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})
      
      
        }
        else {
          EmptyView()
        }
        
      }
      
      else{
        
        CountdownView()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        hasTimeElapsed = true
      }
    }
    }
}



*/






import SwiftUI

//***************** 1 *****************//
struct Hi5View1: View {
  
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false



  
    var body: some View {
      

ZStack {
        
       
          CameraView {
            overlayPoints = $0
            gameLogicController.checkStarsCount($0.count)
          }
          .overlay(
            FingersOverlay(with: overlayPoints)
              .foregroundColor(.orange)
          )
          .edgesIgnoringSafeArea(.all)
          
          StarAnimator(makeItRain: $gameLogicController.makeItRain) {
            gameLogicController.didRainStars(count: $0)
          }
          
          VStack{
           if !hasTimeElapsed {
             Spacer()
               Image ("monkey-hi5")
                 .resizable()
                 .frame(width: 300, height: 400)
                 .padding(.trailing, 365.0)
               
              
            StrokeText(text: "Give Me High Five", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 60 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.top, 180.0)
              .padding(.bottom, 10.0)
          }
      }
       // else {
          
       //   CountdownView1()
          
       // }
      }
      .onAppear() {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
       //   ; DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        //    hasTimeElapsed = true
         // }
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
      
      
      
   Image("")
    .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})
     // playSouund(sound: "", type:"mp3")
        }
      
      /*
        else {
          EmptyView()
        }
        */
      }
      
      else{
        
        CountdownView1()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true
      }
    }
    }
}









//***************** 2 *****************//
struct Hi5View2: View {
  
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false

  
  



  
    var body: some View {
      
    
      ZStack {
        
       
          CameraView {
            overlayPoints = $0
            gameLogicController.checkStarsCount($0.count)
          }
          .overlay(
            FingersOverlay(with: overlayPoints)
              .foregroundColor(.orange)
          )
          .edgesIgnoringSafeArea(.all)
          
          StarAnimator(makeItRain: $gameLogicController.makeItRain) {
            gameLogicController.didRainStars(count: $0)
          }
          
          VStack{
           if !hasTimeElapsed {
             Spacer()
               Image ("monkey-hi5")
                 .resizable()
                 .frame(width: 300, height: 400)
                 .padding(.trailing, 365.0)
               
              
            StrokeText(text: "Give Me High Five", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 60 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.top, 180.0)
              .padding(.bottom, 10.0)
          }
      }
       // else {
          
       //   CountdownView1()
          
       // }
      }
      .onAppear() {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
       //   ; DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        //    hasTimeElapsed = true
         // }
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
   Image("")
   .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})
    
     // playSouund(sound: "", type:"mp3")
        }
      
      /*
        else {
          EmptyView()
        }
        */
      }
      
      else{
       CountdownView2()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true
      }
    }
    }
}






//***************** 3 *****************//
struct Hi5View3: View {
  
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false



  
    var body: some View {
   
      ZStack {
        
       
          CameraView {
            overlayPoints = $0
            gameLogicController.checkStarsCount($0.count)
          }
          .overlay(
            FingersOverlay(with: overlayPoints)
              .foregroundColor(.orange)
          )
          .edgesIgnoringSafeArea(.all)
          
          StarAnimator(makeItRain: $gameLogicController.makeItRain) {
            gameLogicController.didRainStars(count: $0)
          }
          
          VStack{
           if !hasTimeElapsed {
             Spacer()
               Image ("monkey-hi5")
                 .resizable()
                 .frame(width: 300, height: 400)
                 .padding(.trailing, 365.0)
               
              
            StrokeText(text: "Give Me High Five", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 60 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.top, 180.0)
              .padding(.bottom, 10.0)
          }
      }
       // else {
          
       //   CountdownView1()
          
       // }
      }
      .onAppear() {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
       //   ; DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        //    hasTimeElapsed = true
         // }
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
   Image("")
   .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})
     // playSouund(sound: "", type:"mp3")
        }
      
      /*
        else {
          EmptyView()
        }
        */
      }
      
      else{
       CountdownView3()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true
      }
    }
    }
}





//***************** 4 *****************//
struct Hi5View4: View {
  
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false



  
    var body: some View {
      
      // Don't deleted it guys //
      
//      let speechService = SpeechService()
//
//      override func onAppearview (_ animated:Bool) {
//        super.onAppearview(animated)
//
//        speechService.say("give me hi five!")
//
      ZStack {
        
       
          CameraView {
            overlayPoints = $0
            gameLogicController.checkStarsCount($0.count)
          }
          .overlay(
            FingersOverlay(with: overlayPoints)
              .foregroundColor(.orange)
          )
          .edgesIgnoringSafeArea(.all)
          
          StarAnimator(makeItRain: $gameLogicController.makeItRain) {
            gameLogicController.didRainStars(count: $0)
          }
          
          VStack{
           if !hasTimeElapsed {
             Spacer()
               Image ("monkey-hi5")
                 .resizable()
                 .frame(width: 300, height: 400)
                 .padding(.trailing, 365.0)
               
              
            StrokeText(text: "Give Me High Five", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 60 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.top, 180.0)
              .padding(.bottom, 10.0)
          }
      }
       // else {
          
       //   CountdownView1()
          
       // }
      }
      .onAppear() {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
       //   ; DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        //    hasTimeElapsed = true
         // }
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
   Image("")
   // .resizable()
   // .imageScale(.large)
   // .foregroundColor(.white)
    //.frame(width: 200, height: 200)
    //.shadow(radius: 5)
        .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})

     // playSouund(sound: "", type:"mp3")
        }
      
      /*
        else {
          EmptyView()
        }
        */
      }
      
      else{
       CountdownView4()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true
      }
    }
    }
}






//***************** 5 *****************//
struct Hi5View5: View {
  
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false



  
    var body: some View {
      
      // Don't deleted it guys //
      
//      let speechService = SpeechService()
//
//      override func onAppearview (_ animated:Bool) {
//        super.onAppearview(animated)
//
//        speechService.say("give me hi five!")
//
      ZStack {
        
       
          CameraView {
            overlayPoints = $0
            gameLogicController.checkStarsCount($0.count)
          }
          .overlay(
            FingersOverlay(with: overlayPoints)
              .foregroundColor(.orange)
          )
          .edgesIgnoringSafeArea(.all)
          
          StarAnimator(makeItRain: $gameLogicController.makeItRain) {
            gameLogicController.didRainStars(count: $0)
          }
          
          VStack{
           if !hasTimeElapsed {
             Spacer()
               Image ("monkey-hi5")
                 .resizable()
                 .frame(width: 300, height: 400)
                 .padding(.trailing, 365.0)
               
              
            StrokeText(text: "Give Me High Five", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 60 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.top, 180.0)
              .padding(.bottom, 10.0)
          }
      }
       // else {
          
       //   CountdownView1()
          
       // }
      }
      .onAppear() {
        playSouund(sound: "hi5-app", type: "mp3")
        gameLogicController.start()
       //   ; DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        //    hasTimeElapsed = true
         // }
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
   Image("")
        .onAppear(perform: {playSouund(sound: "good job", type: "mp3")})
     // playSouund(sound: "", type:"mp3")
        }
      
      /*
        else {
          EmptyView()
        }
        */
      }
      
      else{
        ExercisesStart6()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 7.0) {
        hasTimeElapsed = true
      }
    }
    }
}





/*
struct Hi5View_Previews: PreviewProvider {
    static var previews: some View {
        Hi5View()
    }
}
*/

