

import SwiftUI

struct BananaEmptey: View {
    var body: some View {
      HStack (){
          //                Search
          HStack {
              ForEach(0..<5) { index in
                  Image("BananaEmptey")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 56.0, height: 74.0)
                  
              } } .padding()
          
          .cornerRadius(8)
          
         
      }
      
    }
}

