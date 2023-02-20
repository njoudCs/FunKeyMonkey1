
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
                Circle().stroke(Color.black, lineWidth: 15)
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
                        (completed() ? Color.green : Color("purple"))
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

struct CountdownView: View {
  
  @State var pushNewView: Bool = false
    @State var counter: Int = 0
    var countTo: Int = 15
    
    var body: some View {
      
      ZStack{
        Color("purple").ignoresSafeArea()
        Image("whitebnana")
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
      }.onReceive(timer) { time in
            if (self.counter < self.countTo) {
                self.counter += 1
            }
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
    }
}
