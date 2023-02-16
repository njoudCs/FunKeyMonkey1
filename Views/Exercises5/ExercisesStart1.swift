
import SwiftUI

struct ExercisesStart1: View {


 // let arrayImg = [UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey")]
  
// let arrayImg1 = ["BananaEmptey" ,  "BananaEmptey", "BananaEmptey"]
@State var timeRemaining = 30

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
  
  struct ExercisesStart1_Previews: PreviewProvider {
    static var previews: some View {
      ExercisesStart1()
    }
  
  
}
