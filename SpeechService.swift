
//SpeechService.swift






import AVFoundation

class SpeechService {
  
  private let synthesizer = AVSpeechSynthesizer()
  
  var rate: Float = AVSpeechUtteranceDefaultSpeechRate

  func say (_ phrase: String) {
    
    let utterance = AVSpeechUtterance(string: phrase)
    utterance.rate = rate
    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    
    synthesizer.speak(utterance)
  }
}
