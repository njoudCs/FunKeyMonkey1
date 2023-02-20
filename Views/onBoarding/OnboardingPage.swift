

import SwiftUI

struct OnBoardingStep {
    
    let image: String
    let title: String
    let description: String
}

private let onBoardingSteps = [
  OnBoardingStep (image: "onbording1", title: "Funky Monkey Coach", description: "Hi, I'm Funky Monkey, your personal trainer, set your iPad and let's exercises togather."),
  OnBoardingStep (image: "onbording2", title: "Encourages You to Keep Going", description: "After completing the exercise, do a High Five with me 🖐🏼."),
  OnBoardingStep (image: "onbording3", title: "Exercise Daily for 6 Minutes", description: "The next day will be unlocked 24 hours after you complete the current day's exercises.")]

struct OnboardingPage: View {
  
  @AppStorage("OnboardingPageShown")
  var OnboardingPageShown: Bool = false
  
    @State var showStart = false
    @State private var currentStep = 0
    init() {
        UIScrollView.appearance () .bounces = false
    }
//    @AppStorage ("hasSeenOnboarding")
//    private var hasSeenOnboarding = false
    //show 1 time
    
//    after var of content
    
    //    if hasSeenOnboarding {
    //        firstview()
    //    }else{
    //        OnboardingPage()
    //    }
  
  //hadeeeeeel

    var body: some View {
        
        
        
        ZStack{  Color("purple")
                .ignoresSafeArea()
            VStack {
                HStack{
                    Spacer ()
                    Button(action: {
                        self.currentStep = onBoardingSteps.count - 1
                    }){
                        HStack{Text ("Skip")
                            Image(systemName:"chevron.forward")
                        }.padding(.top, 15.0)
                        
                        .padding(.trailing, 30.0)
                        .font(.system(size: 24))
                        .foregroundColor (Color("yellow"))
                    }
                }
                
                TabView(selection: $currentStep) {
                    ForEach(0..<onBoardingSteps.count) { it in
                        VStack {
                            Image (onBoardingSteps[it].image)
                                .resizable ()
                                .frame (width: 304, height: 447)
                                .padding (.bottom, 16.0)
                            
                            
                            StrokeText(text: (onBoardingSteps[it].title), width: 2, color: .black)
                                      .foregroundColor(Color("yellow"))
                                      .font(.system(size: 45 ,design: .rounded))
                                      .fontWeight(.heavy)
                                      .padding (.bottom, 16.0)
                            
                            Text (onBoardingSteps[it].description)
                                .multilineTextAlignment (.center)
                                .padding (.horizontal,44)
                                .foregroundColor(Color("yellow"))
                                .fontWeight(.medium)
                                .font(.system(size: 35,design: .rounded))
                        }
                        .tag(it)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                
                
                Button (action:{
                    if self.currentStep < onBoardingSteps.count - 1 {
                        self.currentStep += 1
                      
                    } else {
                    }
                  
                  showStart.toggle()
                  print(showStart,"☕️")
                  
                }
                
                        
                
                
                ){
                        if(currentStep == 2 ){
                            StrokeText(text: "Start", width: 1, color: .black)
                                .foregroundColor(Color.white)
                                .font(.system(size: 50 ,design: .rounded))
                                .fontWeight(.heavy)
                                .padding (10)
                                .frame (width: 220 , height: 100)
                                .background(Color("yellow"))
                                .cornerRadius (60)
                                .padding(.horizontal, 44)
                                .foregroundColor(.white)
                                .padding (.bottom, 24)
                                .shadow( radius: 4.0, x: 7.0, y: 7.0)
                                .fullScreenCover(isPresented: $showStart) {
                                  FirstlyPage()
                                }
                            
                        }
                        
                        
                        else {if(currentStep < 2 ){
                            Text ("Next")
                                .fontWeight(.medium)
                                .padding (10)
                                .font(.system(size: 50))
                                .frame (maxWidth:(220))
                                .background(.white)
                                .cornerRadius (11)
                                .padding(.horizontal, 44)
                                .foregroundColor(.white)
                                .opacity(0)
                                .padding (.bottom, 24)
                        }
                        }
                    }
                    .buttonStyle (PlainButtonStyle ())
                
                
                
                HStack{
                  
                    ForEach (0..<onBoardingSteps.count) { it in
                        if it == currentStep {
                            Circle ()
                                . frame (width: 20, height: 20)
                                . foregroundColor (Color("yellow"))
                        } else {
                            Circle ()
                                . frame (width: 20, height: 20)
                                .foregroundColor (.gray)
                          
                        }
                    }
                }
            }
//            .onAppear(perform: {UserDefaults.standard.OnboardingPageShown = true})
        }
    }
  
}
    
    
    
    
    struct OnboardingPage_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingPage()
        }
    }

