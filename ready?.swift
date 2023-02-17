import SwiftUI
struct ready_: View {
  var body: some View {
    HStack{
      Image("monkey")
        .resizable()
        .scaledToFit()
        .frame(width: 400)      
      VStack{
        Text("Ready?")
        Text("go")
//
      }
      ZStack{
        Rectangle()
          .foregroundColor(Color("Label"))
          .frame(width: 300, height: 348)
        VStack{
          Text("Stand up")
          Text("here")
        }
      }
    }
  }
  
  struct ready__Previews: PreviewProvider {
    static var previews: some View {
      ready_()
    }
  }
  
}
