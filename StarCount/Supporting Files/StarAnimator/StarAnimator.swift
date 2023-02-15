

import SwiftUI

struct StarAnimator: UIViewRepresentable {
  final class Coordinator: NSObject, StarAnimatorDelegate {
    var parent: StarAnimator

    init(_ parent: StarAnimator) {
      self.parent = parent
    }

    func didStartRaining(count: Int) {
      parent.makeItRain = false
      parent.numberOfStarsHandler(count)
    }
  }

  @Binding var makeItRain: Bool
  var numberOfStarsHandler: (Int) -> Void

  func makeUIView(context: Context) -> StarAnimatorView {
    let uivc = StarAnimatorView()
    uivc.delegate = context.coordinator
    return uivc
  }

  func updateUIView(_ uiView: StarAnimatorView, context: Context) {
    if makeItRain {
      uiView.rain(shouldClearCanvas: true)
    }
  }

  func makeCoordinator() -> Coordinator {
    Coordinator(self)
  }
  
  
}
