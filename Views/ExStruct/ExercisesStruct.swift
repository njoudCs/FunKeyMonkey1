import SwiftUI





//*************ExercisesStart1**************//

struct ExercisesStart1: View {
  let imagesc = ["BananaEmptey" ,"BananaEmptey" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
  
  @State var timeRemaining = 10
  @State private var hasTimeElapsed = false
  @State var pushNewView: Bool = false
  
  var body: some View {
    
    
    ScrollView (showsIndicators: false) {
      ZStack{
        
        if !hasTimeElapsed {
          CameraView()
          
          
          VStack ( spacing: 16){
            HStack (){
              
              HStack {
                
                ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
                  Image(imagesc[index])
                    .resizable()
                    .scaledToFit()
                  .frame(width: 56.0, height: 74.0) }
                
              }
              
              .padding()
              .cornerRadius(8)
              
            }
            
            Timer1(timeRemaining: $timeRemaining)
            
            workoutAnimation()
            Text("Running in place").padding(.top, 800.0)
            
          }.padding()
          
          
        }
        
        
        else{
          
          Hi5View()
        }
        
      }.onAppear(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
          hasTimeElapsed = true
        }
      }
      
      
      
    }}
}

  

  
  //*************ExercisesStart2**************//
  
  struct ExercisesStart2: View {
    @State var timeRemaining = 10
    let imagesc = ["BananaColor" ,"BananaEmptey" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
    
    var body: some View {
      
      ScrollView (showsIndicators: false) {
        ZStack{
          
          CameraView().ignoresSafeArea()
          VStack ( spacing: 16){
            
            HStack (){
              
              HStack {
        
                
                ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
                  Image(imagesc[index])
                    .resizable()
                    .scaledToFit()
                  .frame(width: 56.0, height: 74.0) }
                
              }
              
              .padding()
              .cornerRadius(8)
              
            }
            
            Timer1(timeRemaining: $timeRemaining)
            
            workoutAnimation()
            Text("Running in place").padding(.top, 900.0)
            
          }.padding()
          
          
          
        }
        
        
        
      }
      
    }
  }
  

//*************ExercisesStart3**************//

  struct ExercisesStart3: View {
    @State var timeRemaining = 10
    let imagesc = ["BananaColor" ,"BananaColor" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
    
    var body: some View {
      
      ScrollView (showsIndicators: false) {
        ZStack{
          
          CameraView().ignoresSafeArea()
          VStack ( spacing: 16){
            
            HStack (){
              
              HStack {
               
                
                ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
                  Image(imagesc[index])
                    .resizable()
                    .scaledToFit()
                  .frame(width: 56.0, height: 74.0) }
                
              }
              
              .padding()
              .cornerRadius(8)
              
            }
            
            Timer1(timeRemaining: $timeRemaining)
            
            workoutAnimation()
            Text("Running in place").padding(.top, 900.0)
            
          }.padding()
          
          
          
        }
        
        
        
      }
      
    }
  }
  
  
//*************ExercisesStart4**************//

  
  struct ExercisesStart4: View {
    @State var timeRemaining = 10
    let imagesc = ["BananaColor" ,"BananaColor" ,"BananaColor", "BananaEmptey", "BananaEmptey"]
    
    var body: some View {
      
      ScrollView (showsIndicators: false) {
        ZStack{
          
          CameraView().ignoresSafeArea()
          VStack ( spacing: 16){
            
            HStack (){
              
              HStack {
               /*
                Image(imagesB[activeImageIndex])
                  .resizable()
                  .scaledToFit()
                  .frame(width: 56.0, height: 74.0)
                  .onReceive(imageSwitchTimer) { _ in
                    // Go to the next image. If this is the last image, go
                    // back to the image #0
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.imagesB.endIndex
                    // print(activeImageIndex)
                  }
                */
                
                ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
                  Image(imagesc[index])
                    .resizable()
                    .scaledToFit()
                  .frame(width: 56.0, height: 74.0) }
                
              }
              
              .padding()
              .cornerRadius(8)
              
            }
            
            Timer1(timeRemaining: $timeRemaining)
            
            workoutAnimation()
            Text("Running in place").padding(.top, 900.0)
            
          }.padding()
          
          
          
        }
        
        
        
      }
      
    }
  }
  
  
  
  





//*************ExercisesStart5**************//


  
  
  struct ExercisesStart5: View {
    
    @State var timeRemaining = 10
    
    let imagesc = ["BananaColor" ,"BananaColor" , "BananaColor","BananaColor", "BananaEmptey"]

    
    @State var pushNewView: Bool = false
    
   
    
    var body: some View {
      ScrollView (showsIndicators: false) {
        ZStack{
          
          CameraView().ignoresSafeArea()
          VStack ( spacing: 16){
            
            HStack (){
              
              HStack {
               
                
                ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
                  Image(imagesc[index])
                    .resizable()
                    .scaledToFit()
                  .frame(width: 56.0, height: 74.0) }
                
              }
              
              .padding()
              .cornerRadius(8)
              
            }
            
            Timer1(timeRemaining: $timeRemaining)
            
            workoutAnimation()
            Text("Running in place").padding(.top, 900.0)
            
          }.padding()
          
          
          
        }
        
        
        
      }
    }
    
  }
  
  

















/*
struct ExercisesStart2_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesStart2()
    }
}
*/





/*
 let imagesc = ["BananaEmptey" ,"BananaEmptey" , "BananaEmptey" , "BananaEmptey"] // Array of image names to show
 
 let imagesB = ["BananaEmptey" , "BananaColor"] // Array of image names to show
 @State var activeImageIndex = 0 // Index of the currently displayed image
 
 
 let imageSwitchTimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
 */






/*
 Image(imagesB[activeImageIndex])
   .resizable()
   .scaledToFit()
   .frame(width: 56.0, height: 74.0)
   .onReceive(imageSwitchTimer) { _ in
     // Go to the next image. If this is the last image, go
     // back to the image #0
     self.activeImageIndex = (self.activeImageIndex + 1) % self.imagesB.endIndex
     // print(activeImageIndex)
   }
 */



// ******************************************** //

/* let imagesB = ["BananaEmptey" , "BananaColor"] // Array of image names to show
@State var activeImageIndex = 0 // Index of the currently displayed image


let imageSwitchTimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()

*/
