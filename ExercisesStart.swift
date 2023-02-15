
import SwiftUI

struct ExercisesStart: View {
  
 
  
 // let arrayImg = [UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey") , UIImage(named: "BananaEmptey")]
  
// let arrayImg1 = ["BananaEmptey" ,  "BananaEmptey", "BananaEmptey"]


  var body: some View {
      
    ZStack(){
        HStack{
          
          
          ForEach(0..<5) { index in
            Image("BananaEmptey")
              .resizable()
              .scaledToFit()
            .frame(width: 56.0, height: 74.0) }
        }.padding(.bottom, 600.0)
        
        
        HStack{
          
          workoutAnimation()
            .padding(.top, 250)
//            .frame(width: 497 , height: 420).padding(.trailing, 600.0)
          
          
          
        }
        
        HStack{Text("Running in place")
            .font(.system(size: 48))
          
          
        }.padding(.top, 700.0)
        
      
//         Image("BananaEmptey").resizable()
//         .frame(width: 56.0, height: 74.0)
//
//
        
      }
     
        
        
        
      }
  
}
  
  struct ExercisesStart_Previews: PreviewProvider {
    static var previews: some View {
      ExercisesStart()
    }
  
  
}
