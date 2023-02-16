
import SwiftUI

struct ExercisesStart: View {
  
 
 
@State var timeRemaining = 10

  var body: some View {

    
           VStack(){
             BananaEmptey(timeRemaining: timeRemaining)
             Timer1(timeRemaining: $timeRemaining)
             workoutAnimation()
           
             Text("Running in place")
                 .font(.title)
                 .fontWeight(.bold)
         
           }.padding()
          
        
      }
  
}
  
  struct ExercisesStart_Previews: PreviewProvider {
    static var previews: some View {
      ExercisesStart()
    }
  
  
}
