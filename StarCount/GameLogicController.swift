
import Combine
import Foundation

final class GameLogicController: ObservableObject {
  private var goalCount = 5

  @Published var makeItRain = false
  @Published private(set) var successBadge: Int?
  private var shouldEvaluateResult = true

  func start() {
    makeItRain = true
  }

  func didRainStars(count: Int) {
    goalCount = count
  }

  func checkStarsCount(_ count: Int) {
    if !shouldEvaluateResult {
      return
    }
    if count == goalCount {
      shouldEvaluateResult = false
      successBadge = count

      DispatchQueue.main.asyncAfter(deadline: .now() + 30) {
        self.successBadge = nil
        self.makeItRain = true
        self.shouldEvaluateResult = true
      }
    }
  }
}
