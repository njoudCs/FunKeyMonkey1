


import SwiftUI

struct Hi5View: View {
  
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  
    var body: some View {
      ZStack {
        
       

        
        CameraView {
          
          overlayPoints = $0
          gameLogicController.checkStarsCount($0.count)
        }
        .overlay(
          FingersOverlay(with: overlayPoints)
            .foregroundColor(.orange)
        )
        .edgesIgnoringSafeArea(.all)

        StarAnimator(makeItRain: $gameLogicController.makeItRain) {
          gameLogicController.didRainStars(count: $0)
        }
        
       Image ("monkey-hi5")
          .resizable()
          .frame(width: 450, height: 750)
          .padding(.trailing, 400.0)
      }
      .onAppear {
        gameLogicController.start()
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  @ViewBuilder
  private var successBadge: some View {
    if let success = gameLogicController.successBadge {
      Image("high-five-clipart-md")
        .resizable()
        .imageScale(.large)
        .foregroundColor(.white)
        .frame(width: 200, height: 200)
        .shadow(radius: 5)
      
      
    } else {
      EmptyView()
    }
    
  }
}

struct Hi5View_Previews: PreviewProvider {
    static var previews: some View {
        Hi5View()
    }
}
