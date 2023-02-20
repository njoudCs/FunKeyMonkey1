

import SwiftUI

struct achiviment: View {
    @State var text = ""
    var body: some View {
        ZStack{
            Image("Back")
                .resizable()
                .ignoresSafeArea()
            .background(Color("luj"))
            
            VStack{
               
            }

            VStack{
                StrokeText(text: "Your achiviment", width: 1, color: .black)
                .foregroundColor(Color("yellow"))
                .font(.system(size: 70 ,design: .rounded))
                .fontWeight(.heavy)
                    .padding(.horizontal)

                    
                        
                TextField("Name", text: $text)
                    .font(.system(size: 40))
                    
                    .padding(.vertical,9)
                    .padding(.horizontal,20)
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
                        Text("Badges").font(.system(size: 40))
                        .padding(.leading, 120.0)
                            .padding(.trailing, 400)
                            ZStack{
                            Rectangle()
                                .foregroundColor(Color("Label"))
                                .frame(width: 430 , height: 400)
                                .cornerRadius(55)
                            Image("00")
                                .padding(.trailing, 250)
                                .padding(.bottom, 200)
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
