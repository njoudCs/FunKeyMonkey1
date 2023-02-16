

import SwiftUI

struct greatjob: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("7"))
                .opacity(88)
                .frame(width: 450 , height: 480)
                .cornerRadius(55)
            VStack{
                StrokeText(text: "jori", width: 1, color: .black)
                .foregroundColor(Color("Write"))
                .font(.system(size: 40 ,design: .rounded))
                .fontWeight(.heavy)
                    .padding(.horizontal)
    

                StrokeText(text: "Great Job", width: 1, color: .black)
                .foregroundColor(Color("Write"))
                .font(.system(size: 40 ,design: .rounded))
                .fontWeight(.heavy)
                    .padding(.horizontal)
                
                Image("9")
                    .padding()
                Button(action: {
                    print("GO")
                }) {
                    HStack{
                        Text("OK")
                            .fontWeight(.heavy)
                            .font(.title)
                            .frame(width:150,height:30)
                            .shadow(color:.black, radius: 20, x: 0.0,y:70)

                    } .padding()
                        .foregroundColor(.white)
                        .background(Color("Write"))
                        .cornerRadius(20)
                }
                
            }
            
            
            
        }
        
    }
}
//struct StrokeText: View {
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
    struct greatjob_Previews: PreviewProvider {
        static var previews: some View {
          greatjob()
        }
    }
    
