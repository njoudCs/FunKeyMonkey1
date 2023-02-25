
import SwiftUI




let timer = Timer
    .publish(every: 1, on: .main, in: .common)
    .autoconnect()

struct Clock: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
      
        VStack() {
          
         
          
          
            Text(counterToMinutes())
                .font(.custom("Avenir Next", size: 60))
                .foregroundColor(Color("purple"))
                .fontWeight(.black)
          
                
          
          
      
          
        }
    }
    
    func counterToMinutes() -> String {
        let currentTime = countTo - counter
        let seconds = currentTime % 60
        let minutes = Int(currentTime / 60)
        
        return "\(minutes):\(seconds < 10 ? "0" : "")\(seconds)"
    }
    
}

struct ProgressTrack: View {
    var body: some View {
        Circle()
            .fill(Color.clear)
            .frame(width: 250, height: 250)
            .overlay(
                Circle()
//                  .stroke(Color.black, lineWidth: 15)
        )
    }
}

struct ProgressBar: View {
    var counter: Int
    var countTo: Int
    
    var body: some View {
        Circle()
        .fill(Color("yellow"))
            .frame(width: 250, height: 250)
            .overlay(
                Circle().trim(from:0, to: progress())
                    .stroke(
                        style: StrokeStyle(
                            lineWidth: 15,
                            lineCap: .round,
                            lineJoin:.round
                        )
                )
                    .foregroundColor(
                      (completed() ? Color.white : Color.gray)
                ).animation(
                    .easeInOut(duration: 0.2)
                )
        )
    }
    
    func completed() -> Bool {
        return progress() == 1
    }
    
    func progress() -> CGFloat {
        return (CGFloat(counter) / CGFloat(countTo))
    }
}



/*

struct CountdownView: View {
  
  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 15
    
    var body: some View {
      
      ZStack{
        Color("purple").ignoresSafeArea()
        Image("Back")
          .resizable()
        VStack(spacing:100){
          
          
          ZStack{
            ProgressTrack()
            ProgressBar(counter: counter, countTo: countTo)
            Clock(counter: counter, countTo: countTo)
          }.padding(.top)
          
          
     
         
            Image("monkyRest")
              .resizable()
              .frame(width: 400, height: 460)
            
      
            
          
          
          StrokeText(text: "Drink Water", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 45 ,design: .rounded))
            .fontWeight(.heavy)
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 50)
          
          
          
        }
        
        if pushNewView{

              Workout()
            }
      }
      
      .onAppear(perform: {
        
        playSouund(sound: "resttime-app", type: "mp3")
        
      })
      
      .onReceive(timer) { time in
            if (self.counter < self.countTo) {
                self.counter += 1
            }
        }
    }
}

*/







 //***************** 1 *****************//

struct CountdownView1: View {
  
  

  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 10
  @State private var hasTimeElapsed = false

    var body: some View {
      
      ZStack{
        
        if !hasTimeElapsed{
          Color("purple").edgesIgnoringSafeArea(.all)
          Image("Back")
          .resizable()
          .edgesIgnoringSafeArea(.all)
          
          VStack(spacing:100){
            
            
            ZStack{
              ProgressTrack()
              ProgressBar(counter: counter, countTo: countTo)
              Clock(counter: counter, countTo: countTo)
            }.padding(.top)
            
            
          
              
              Image("monkyRest")
                .resizable()
                .frame(width: 400, height: 460)
              
              
            
            
            StrokeText(text: "Drink Water1", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 45 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.bottom, 50)
            
          }
          
        }
        
        else{
          
        ExercisesStart2()
         
        }
        
        
        
      }.onAppear(perform: { playSouund(sound: "resttime-app", type: "mp3")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
          hasTimeElapsed = true }
      })
      .onReceive(timer) { time in
        if (self.counter < self.countTo) {
          self.counter += 1
        }}
    }
}





//***************** 2 *****************//


struct CountdownView2: View {
  
  

  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 10
  @State private var hasTimeElapsed = false

    var body: some View {
      
      ZStack{
        
        if !hasTimeElapsed{
          Color("purple").edgesIgnoringSafeArea(.all)
          Image("Back")
          .resizable()
          .edgesIgnoringSafeArea(.all)
          VStack(spacing:100){
            
            
            ZStack{
              ProgressTrack()
              ProgressBar(counter: counter, countTo: countTo)
              Clock(counter: counter, countTo: countTo)
            }.padding(.top)
            
            
           
              
              Image("monkyRest")
                .resizable()
                .frame(width: 400, height: 460)
              
              
        
            
            StrokeText(text: "Drink Water2", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 45 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.bottom, 50)
            
          }
          
        }
        
        else{
          
        ExercisesStart3()
         
        }
        
        
        
      }.onAppear(perform: { playSouund(sound: "resttime-app", type: "mp3")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
          hasTimeElapsed = true }
      })
      .onReceive(timer) { time in
        if (self.counter < self.countTo) {
          self.counter += 1
        }}
    }
}









struct CountdownView3: View {
  
  

  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 10
  @State private var hasTimeElapsed = false

    var body: some View {
      
      ZStack{
        
        if !hasTimeElapsed{
          Color("purple").edgesIgnoringSafeArea(.all)
          Image("Back")
          .resizable()
          .edgesIgnoringSafeArea(.all)
          
          VStack(spacing:100){
            
            
            ZStack{
              ProgressTrack()
              ProgressBar(counter: counter, countTo: countTo)
              Clock(counter: counter, countTo: countTo)
            }.padding(.top)
            
            
            
              
              Image("monkyRest")
                .resizable()
                .frame(width: 400, height: 460)
              
              
         
            
            StrokeText(text: "Drink Water3", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 45 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.bottom, 50)
            
          }
          
        }
        
        else{
          
       ExercisesStart4()
         
        }
        
        
        
      }.onAppear(perform: { playSouund(sound: "resttime-app", type: "mp3")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
          hasTimeElapsed = true }
      }).onReceive(timer) { time in
        if (self.counter < self.countTo) {
          self.counter += 1
        }}
    }
}








struct CountdownView4: View {
  
  

  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 10
  @State private var hasTimeElapsed = false

    var body: some View {
      
      ZStack{
        
        if !hasTimeElapsed{
          Color("purple").edgesIgnoringSafeArea(.all)
          Image("Back")
          .resizable()
          .edgesIgnoringSafeArea(.all)
          VStack(spacing:100){
            
            
            ZStack{
              ProgressTrack()
              ProgressBar(counter: counter, countTo: countTo)
              Clock(counter: counter, countTo: countTo)
            }.padding(.top)
            
            
          
              
              Image("monkyRest")
                .resizable()
                .frame(width: 400, height: 460)
              
              
         
            
            StrokeText(text: "Drink Water4", width: 1, color: .black)
              .foregroundColor(Color("yellow"))
              .font(.system(size: 45 ,design: .rounded))
              .fontWeight(.heavy)
              .font(.title)
              .fontWeight(.bold)
              .padding(.bottom, 50)
            
          }
          
        }
        
        else{
          
       ExercisesStart5()
         
        }
        
        
        
      }.onAppear(perform: { playSouund(sound: "resttime-app", type: "mp3")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
          hasTimeElapsed = true }
      }).onReceive(timer) { time in
        if (self.counter < self.countTo) {
          self.counter += 1
        }}
    }
}











/*


struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView1()
    }
}

*/
