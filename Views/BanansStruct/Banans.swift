

import SwiftUI



import SwiftUI

struct BanansStruct1: View {
  let imagese = ["BananaEmptey" ,"BananaEmptey" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]

  let imagesc = ["BananaEmptey" ,"BananaEmptey" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
    var body: some View {
       
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
}


struct BanansStruct2: View {
  
  let imagesc = ["BananaColor" ,"BananaEmptey" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
    var body: some View {
       
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
}

struct BanansStruct3: View {
  let imagesc = ["BananaColor" ,"BananaColor" ,"BananaEmptey", "BananaEmptey", "BananaEmptey"]
    var body: some View {
       
      HStack {
        
        ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
          Image(imagesc[index])
            .resizable()
            .scaledToFit()
          .frame(width: 56.0, height: 74.0) }
        
      }
      
      .padding()
     
      
    }
}



struct BanansStruct4: View {
  
  let imagesc = ["BananaColor" ,"BananaColor" ,"BananaColor", "BananaEmptey", "BananaEmptey"]
    var body: some View {
       
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
}



struct BanansStruct5: View {
  
  let imagesc = ["BananaColor" ,"BananaColor" ,"BananaColor", "BananaColor", "BananaEmptey"]
    var body: some View {
       
      HStack {
        
        ForEach(Array(imagesc.enumerated()), id: \.offset) { index, image in
          Image(imagesc[index])
            .resizable()
            .scaledToFit()
          .frame(width: 56.0, height: 74.0) }
        
      }
      
      .padding()
    
      
    }
}



struct BanansStruct6: View {
  
  let imagesc = ["BananaColor" ,"BananaColor" ,"BananaColor", "BananaColor", "BananaColor"]
    var body: some View {
       //here
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
}
