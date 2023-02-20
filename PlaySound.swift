
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSouund(sound: String, type: String){
  
  
  if let path = Bundle.main.path(forResource: sound, ofType: type){
    
    do{
      
      
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("Error: could not find any sound")
    }
    
    
  }
  
}

