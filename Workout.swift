/// Copyright (c) 1444 AH Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct Workout: View {
  
  @State private var snappedItem = 0.0
  @State private var draggingItem = 0.0
  
    var body: some View {
      NavigationView() {
          ZStack() {
              
              Color("purple").ignoresSafeArea()
              Image("whitebnana")
                  .resizable()
               //   .scaledToFit()
              Image("Monkymain")
                  .resizable()
                  .scaledToFit()
                  .frame(width: 530)
                 
              VStack{
                  HStack{
                      NavigationLink(destination: let_sGo(), label: {
                          Image("head")
                              .resizable()
                              .scaledToFit()
                          
                              .frame(width: 100, height: 100, alignment: .center)
                          
                              .background(.yellow)
                              .cornerRadius(70)
                      }) .padding(.bottom,350)
                      
                      
                      Text("Workout")
                          .padding(.bottom ,350)
                          .padding(.trailing ,100)
                          .multilineTextAlignment(.center)
                          .font(.system(size: 70, design: .rounded))
                          .fontWeight(.heavy)
                          .foregroundColor(Color("yellow"))
                          .shadow(color: .black, radius: 6)
                          .padding(.horizontal,110)
                  }
             
                      
                     
                      
          ZStack{
                        
              VStack {
                      NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 1")
                              }
                              )
                          }.frame(width: 200, height: 200)
                          .scaleEffect(1.0 - abs(distance(1)) * 0.2 )
                          .opacity(2.0 - abs(distance(1)) * 0.3 )
                          .offset(x: myXOffset(1), y: 0)
                          .zIndex(1.0 - abs(distance(1)) * 0.1)
                          
                          VStack {
                              
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 2")
                              })
                          }
                          .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(2)) * 0.2 )
                          .opacity(2.0 - abs(distance(2)) * 0.2 )
                          .offset(x: myXOffset(2), y: 0)
                          .zIndex(1.0 - abs(distance(2)) * 0.1)
                              
                          VStack {
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 3")
                              })
                              
                          }
                         .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(3)) * 0.2 )
                          .opacity(2.0 - abs(distance(3)) * 0.2 )
                          .offset(x: myXOffset(3), y: 0)
                          .zIndex(1.0 - abs(distance(3)) * 0.1)
                          
                          VStack {
                              
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 4")
                              })
                              
                          }
                          .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(4)) * 0.2 )
                          .opacity(2.0 - abs(distance(4)) * 0.2 )
                          .offset(x: myXOffset(4), y: 0)
                          .zIndex(1.0 - abs(distance(4)) * 0.1)
                         
                          VStack {
                              
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 5")
                              })
                              
                          }
                          .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(5)) * 0.2 )
                          .opacity(2.0 - abs(distance(5)) * 0.2 )
                          .offset(x: myXOffset(5), y: 0)
                          .zIndex(1.0 - abs(distance(5)) * 0.1)
                         
                          VStack {
                              
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 6")
                              })
                              
                          }
                          .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(6)) * 0.2 )
                          .opacity(2.0 - abs(distance(6)) * 0.2 )
                          .offset(x: myXOffset(6), y: 0)
                          .zIndex(1.0 - abs(distance(6)) * 0.1)
                         
                          VStack {
                              
                              NavigationLink(destination: let_sGo(), label: {
                                  level(buttonTitle: "Day 7")
                              })
                              
                          }
                          .frame(width: 200, height: 200)
                          
                          .scaleEffect(1.0 - abs(distance(7)) * 0.2 )
                          .opacity(2.0 - abs(distance(7)) * 0.2 )
                          .offset(x: myXOffset(7), y: 0)
                          .zIndex(1.0 - abs(distance(7)) * 0.1)
              
          }
          .gesture(
              DragGesture()
                  .onChanged { value in
                      draggingItem = snappedItem + value.translation.width / 100
                  }
                  .onEnded { value in
                      withAnimation {
                          draggingItem = snappedItem + value.predictedEndTranslation.width / 900
                          draggingItem = round(draggingItem).remainder(dividingBy: Double(7))
                          snappedItem = draggingItem
                      }
                  }
          )
                  
          .padding(.bottom,320)
              }
          }
      }.navigationViewStyle(StackNavigationViewStyle())
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
      
      Text(buttonTitle)
          
          .frame(width: 316,height: 316)
          .foregroundColor(.white)
          .background(Color("yellow"))
          .cornerRadius(55)
          .font(.system(size: 70, weight: .heavy, design: .rounded))
       }
}

    


struct Workout_Previews: PreviewProvider {
    static var previews: some View {
        Workout()
    }
}
