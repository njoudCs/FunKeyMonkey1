

import SwiftUI

struct achiviment: View {
    @State var text = ""
    var body: some View {
        ZStack{
            Image("x")
                .resizable()
            .background(Color("luj"))
            
            VStack{
               
            }

            VStack{
                StrokeText(text: "Your achiviment", width: 1, color: .black)
                .foregroundColor(Color("Write"))
                .font(.system(size: 40 ,design: .rounded))
                .fontWeight(.heavy)
                    .padding(.horizontal)

                    
                        
                TextField("Name", text: $text)
                    .font(.system(size: 25))
                    
                    .padding(.vertical,9)
                    .padding(.horizontal,20)
                    .frame(width: 450 , height:70 )
                    .background(Color("Label"))
                    .cornerRadius(70)
                            

                ZStack{
                    Rectangle()
                        .foregroundColor(Color("7"))
                        .frame(width: 500 , height: 450)
                        .cornerRadius(60)
                    VStack{
                        Text("Badges").font(.system(size: 25))
                            .padding(.leading)
                           // .font(.system(size: 100)
                            .padding(.trailing, 400)
                            ZStack{
                            Rectangle()
                                .foregroundColor(Color("Label"))
                                .frame(width: 430 , height: 350)
                                .cornerRadius(12)
                            Image("00")
                                .padding(.trailing, 250)
                                .padding(.bottom, 150)
                        }
                    } }
            }
        }
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
