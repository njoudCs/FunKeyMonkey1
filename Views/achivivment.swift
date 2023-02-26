

import SwiftUI

struct achiviment: View {
//    @State var text = ""
  @AppStorage("KID_NAME") var kidName: String = ""

    var body: some View {
        ZStack{
            Image("Back")
                .resizable()
                .ignoresSafeArea()
            .background(Color("luj"))
            
            VStack{
               
            }

          VStack{
                StrokeText(text: "Your Achievement", width: 1, color: .black)
                .foregroundColor(Color("yellow"))
                .font(.system(size: 70 ,design: .rounded))
                .fontWeight(.heavy)
                    .padding(.horizontal)

                    
                        
                Text("Name : \(kidName)")
                .font(.system(size: 40, weight: .heavy))
                .padding(.trailing, 180)
                .foregroundColor(Color("luj"))
                 
                    .frame(width: 500 , height:100 )
                    .background(Color("Label"))
                    .cornerRadius(55)
                    .padding()
                            

                ZStack{
                    Rectangle()
                        .foregroundColor(Color("7"))
                        .frame(width: 500 , height: 550)
                        .cornerRadius(60)
                    VStack{
                      Text("Badges").font(.system(size: 40, weight: .heavy))
                        .foregroundColor(Color("luj"))
                     
                            .padding(.trailing, 260)
                            ZStack{
                            Rectangle()
                                .foregroundColor(Color("Label"))
                                .frame(width: 430 , height: 400)
                                .cornerRadius(55)
                              
                          //  Image("00")
                            //    .padding(.trailing, 250)
                             //   .padding(.bottom, 200)
                        }
                    } }
            }
        }//.navigationBarHidden(true)
    }
}
//struct StrokeText1: View {
//let text: String
//let width: CGFloat
//let color: Color
//
//var body: some View {
//    ZStack{
//        ZStack{
//            Text(text).offset(x:  width, y:  width)
//            Text(text).offset(x: -width, y: -width)
//            Text(text).offset(x: -width, y:  width)
//            Text(text).offset(x:  width, y: -width)
//        }
//        .foregroundColor(color)
//        Text(text)
//    }
//}
//}

struct achiviment_Previews: PreviewProvider {
    static var previews: some View {
      achiviment()
    }
}
