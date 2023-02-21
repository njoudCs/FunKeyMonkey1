
import SwiftUI

struct Workout: View {
  
  @State private var snappedItem = 0.0
  @State private var draggingItem = 0.0
  
    var body: some View {
     
          ZStack() {
              
              Color("purple").ignoresSafeArea()
              Image("whitebnana")
                  .resizable()
                  .ignoresSafeArea()
                 // .scaledToFit()
              Image("Monkymain")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 530)
                 
            VStack{
              HStack{
                NavigationLink(destination: achiviment(), label: {
                  Image("head")
                    .resizable()
                    .scaledToFit()
                  
                    .frame(width: 100, height: 100, alignment: .center)
                  
                    .background(Color("yellow"))
                    .cornerRadius(70)
                }) .padding(.bottom,350)
                
                StrokeText(text: "Workout", width: 1, color: .black)
                  .padding(.bottom ,350)
                  .padding(.trailing ,100)
                  .multilineTextAlignment(.center)
                  .font(.system(size: 70, design: .rounded))
                  .fontWeight(.heavy)
                  .foregroundColor(Color("yellow"))
                  .shadow(color: .black, radius: 1)
                  .padding(.horizontal,110)
              }
              
              
              
              
              ZStack{
                
                
                
                
                
                VStack {
                  //                      NavigationLink(destination: let_sGo(), label: {
                  //                                  level2(buttonTitle2: "Day 7")
                  //                              }
                  //                              )
                  
                  ZStack{
                    
                    level2(buttonTitle2: " Day 7")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                      
                    }.foregroundColor(.gray)
                    
                      .padding(.top,170)
                    
                  }
                  
                  
                  
                }
                
                
                
                
                
                .frame(width: 200, height: 200)
                .scaleEffect(1.0 - abs(distance(1)) * 0.2 )
                .opacity(2.0 - abs(distance(1)) * 0.3 )
                .offset(x: myXOffset(1), y: 0)
                .zIndex(1.0 - abs(distance(1)) * 0.1)
                
                VStack {
                  
                  ZStack{
                    
                    level2(buttonTitle2: " Day 6")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                      
                    }.foregroundColor(.gray)
                    
                      .padding(.top,170)
                    
                  }
                  
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(2)) * 0.2 )
                .opacity(2.0 - abs(distance(2)) * 0.2 )
                .offset(x: myXOffset(2), y: 0)
                .zIndex(1.0 - abs(distance(2)) * 0.1)
                
                VStack {
                  ZStack{
                    
                    level2(buttonTitle2: " Day 5")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                      
                    }.foregroundColor(.gray)
                    
                      .padding(.top,170)
                    
                  }
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(3)) * 0.2 )
                .opacity(2.0 - abs(distance(3)) * 0.2 )
                .offset(x: myXOffset(3), y: 0)
                .zIndex(1.0 - abs(distance(3)) * 0.1)
                
                VStack {
                  
                  ZStack{
                    
                    level2(buttonTitle2: " Day 4")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                    }.foregroundColor(.gray)
                    
                      .padding(.top,170)
                    
                  }
                  
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(4)) * 0.2 )
                .opacity(2.0 - abs(distance(4)) * 0.2 )
                .offset(x: myXOffset(4), y: 0)
                .zIndex(1.0 - abs(distance(4)) * 0.1)
                
                VStack {
                  
                  ZStack{
                    
                    level2(buttonTitle2: " Day 3")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                      
                    }.foregroundColor(.gray)
                     .padding(.top,170)
                    
                  }
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(5)) * 0.2 )
                .opacity(2.0 - abs(distance(5)) * 0.2 )
                .offset(x: myXOffset(5), y: 0)
                .zIndex(1.0 - abs(distance(5)) * 0.1)
                
                VStack {
                  ZStack{
                    
                    level2(buttonTitle2: " Day 2")
                    
                    
                    HStack{
                      Text("Coming soon")
                        .font(.system(size: 25))
                      Image(systemName: "lock")
                      
                    }.foregroundColor(.gray)
                    
                      .padding(.top,170)
                    
                  }
   
                  
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(6)) * 0.2 )
                .opacity(2.0 - abs(distance(6)) * 0.2 )
                .offset(x: myXOffset(6), y: 0)
                .zIndex(1.0 - abs(distance(6)) * 0.1)
                
                VStack {
                  
                  NavigationLink(destination: let_sGo(), label: {
                    level(buttonTitle: "Day 1")
                  })
                  
                }
                .frame(width: 200, height: 200)
                
                .scaleEffect(1.0 - abs(distance(7)) * 0.2 )
                .opacity(2.0 - abs(distance(7)) * 0.2 )
                .offset(x: myXOffset(7), y: 0)
                .zIndex(1.0 - abs(distance(7)) * 0.1)
                
                
                
                
              } .gesture(
                DragGesture()
                  .onChanged { value in
                    draggingItem = snappedItem + value.translation.width / 900
                    
                  }.onEnded { value in
                    withAnimation {
                      draggingItem = snappedItem + value.predictedEndTranslation.width / 900
                      draggingItem = round(draggingItem).remainder(dividingBy: Double(7))
                      snappedItem = draggingItem
                    }
                  }
                
              ).padding(.bottom,320)
            }
            
            
            
          }
        
        
      
       
    }
  
  func distance(_ item: Int) -> Double {
    return (draggingItem - Double(item)).remainder(dividingBy: Double(7))
  }
  
  func myXOffset(_ item: Int) -> Double {
    let angle = Double.pi * 6 / Double(7) * distance(item)
    return sin(angle) * 800
  }
}





struct level : View {
  @State var buttonTitle: String
  var body: some View{
    
    StrokeText(text: buttonTitle, width: 1, color: .black)
    
      .frame(width: 316,height: 316)
      .foregroundColor(.white)
      .background(Color("yellow"))
      .cornerRadius(55)
      .font(.system(size: 70, weight: .heavy, design: .rounded))
  }
}




struct level2 : View {
  @State var buttonTitle2: String
  var body: some View{
    
    StrokeText(text: buttonTitle2, width: 1, color: .black)
    
      .frame(width: 316,height: 316)
      .foregroundColor(.white)
      .background(Color("lable"))
      .cornerRadius(55)
      .font(.system(size: 70, weight: .heavy, design: .rounded))
  }
}




struct Workout_Previews: PreviewProvider {
  static var previews: some View {
    Workout()
  }
}
