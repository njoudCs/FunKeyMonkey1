
import SwiftUI

struct h: View {
  
         //          0                 1               2              3                4
  let imagesB = ["BananaColor" , "BananaColor" ,"BananaColor" , "BananaEmptey", "BananaEmptey"] // Array of image names to show
  
  @State var activeImageIndex = 0 // Index of the currently displayed image
  
  
  let imageSwitchTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
  
  var body: some View {
    
    
    

 
  /*
    VStack {
      HStack {
        
        ForEach(Array(imagesB.enumerated()), id: \.offset) { activeImageIndex, image in
          Image(imagesB[activeImageIndex])
            .resizable()
            .scaledToFit()
            .frame(width: 56.0, height: 74.0)
           .onReceive(imageSwitchTimer) { _ in
            self.activeImageIndex = (self.activeImageIndex + 1) % self.imagesB.endIndex
            
            }

      
        
        }
      } */
    
    
      
      // Banana will change after 5 seconds - Njoud Al-Najem
    
      Image(imagesB[activeImageIndex])
      .onReceive(imageSwitchTimer) { _ in
      // Go to the next image. If this is the last image, go
      // back to the image #0
        self.activeImageIndex = (self.activeImageIndex)
       // print(activeImageIndex)
      }
      

    
      
    
  }
}

struct h_Previews: PreviewProvider {
  static var previews: some View {
    h()
  }
}
