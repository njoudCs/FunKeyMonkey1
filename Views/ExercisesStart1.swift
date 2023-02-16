
import SwiftUI

struct ExercisesStart: View {
  

  
 // let arrayImg = [UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey")]
  
// let arrayImg1 = ["BananaEmptey" ,  "BananaEmptey", "BananaEmptey"]
@State var timeRemaining = 10

  var body: some View {

    
           VStack(){
             
             BananaEmptey(timeRemaining: timeRemaining)
             ee(timeRemaining: $timeRemaining)
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
