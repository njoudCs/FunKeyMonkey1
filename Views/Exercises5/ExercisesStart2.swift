

import SwiftUI

struct ExercisesStart2: View {
  @State var timeRemaining = 10

    var body: some View {
      
      
             VStack(){
               BananaEmptey(timeRemaining: timeRemaining)
               //ee(timeRemaining: $timeRemaining)
               workoutAnimation()
             
               Text("Running in place")
                   .font(.title)
                   .fontWeight(.bold)
           
             }.padding()
       
    }
}

struct ExercisesStart2_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesStart2()
    }
}
