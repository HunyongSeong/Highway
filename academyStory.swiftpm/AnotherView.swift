import SwiftUI

//extension Text {
////    @backDeployed(before: iOS 16.2)
//    @available(iOS 16.2, *)
//    public func monospaced(_ isActive: Bool) -> Text {
//        fatalError("Implementation here")
//    }
//}

struct AnotherView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

    @State var firstNaviLinkActive = false

    @State var animate : Bool = false
    @State private var isAnimating: Bool = true
    @State private var isAnimatingBack: Bool = false


    //구조체에서 값변경이 안되는 특징때문에 @State 키워드를 사용.
    //그리고 그 값을 다른 뷰들에서 사용하기 위해서 @Binding 키워드를 사용.
    
    //이모지를 넣어주세요 마지막값을 목표값으로 넣어주세요
//    @State var imageDice1 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
//    @State var imageDice2 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
//    @State var imageDice3 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
//    @State var imageDice4 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
//    @State var imageDice5 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
//    @State var imageDice6 = [Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png"), Image("dice01.png")]
    
    @State var emoji1 = ["🍁", "😕", "😗", "😙", "💪", "😌", "😆", "😉", "🥳"]
    @State var emoji2 = ["🍁", "🤭", "😲", "😆", "🥳", "🤩", "😆", "😉", "🥰"]
    @State var emoji3 = ["🍁", "🤔", "🤓", "😎", "😔", "😇", "😆", "😉", "🤩"]
    @State var emoji4 = ["🍁", "😟", "😲", "😆", "🤩", "😅", "😅", "😉", "🤪"]
    @State var emoji5 = ["🍁", "🥶", "🤩", "😄", "😁", "🥳", "😆", "😉", "😚"]
    @State var emoji6 = ["🍁", "🧐", "🌪️", "🍔", "🎂", "🍻", "😆", "😉", "☺️"]
    
    var body: some View {
        NavigationView { // Navigation have to locate to the Top
        ZStack{
                
                Image("maple01")
                    .resizable()
                    .ignoresSafeArea(.all, edges: .all)
                    .offset(y: isAnimating ? 10 : -10)
                    .opacity(0.8)
                    .animation(
                        Animation
                            .easeOut(duration: 2)
                            .repeatForever()
                        , value: isAnimating
                    )
                
                VStack {
                    
                    Spacer()
                    Spacer()
                    
                    // Rounded Text is available on iOS 16.1
                    // So we have to use below code ->
                    if #available(iOS 16.1, *) {
                        Text("Academy Story🍁")
                            .fontDesign(.rounded)
                            .fontWeight(.bold)
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .bold()
                            .offset(x: 0, y: 30)

                    } else {
                        Text("Academy Story🍁")
                            .fontWeight(.bold)
                            .font(.system(size: 45))
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                    //Rolling을 넣어준다
                    
                    HStack {
                        Rolling(font: .system(size: 80), emoji: $emoji1, animate: $animate)
                        Rolling(font: .system(size: 80), emoji: $emoji2, animate: $animate)
                        Rolling(font: .system(size: 80), emoji: $emoji3, animate: $animate)
                        Rolling(font: .system(size: 80), emoji: $emoji4, animate: $animate)
                        Rolling(font: .system(size: 80), emoji: $emoji5, animate: $animate)
                        Rolling(font: .system(size: 80), emoji: $emoji6, animate: $animate)
                        
                    }
                    .offset(x: 0, y: 15)

                    
                    if #available(iOS 16.0, *) {
                        HStack {
                            Text("Claire")
                                .frame(width:70)
                                .padding(8)
                            Text("Helia")
                                .frame(width:70)
                                .padding(9)
                            Text("Tyler")
                                .frame(width:70)
                                .padding(10)
                            Text("Rash")
                                .frame(width:70)
                                .padding(10)
                            Text("Goggins")
                                .frame(width:70)
                                .padding(9)
                            Text("Zett")
                                .frame(width:70)
                                .padding(8)
                        }
                        .offset(x:0, y: -20)
                        .font(.system(size:18))
                        .bold()
                    } else {
                        // Fallback on earlier versions
                        HStack {
                            Text("Claire")
                                .frame(width:70)
                                .padding(8)
                            Text("Helia")
                                .frame(width:70)
                                .padding(9)
                            Text("Tyler")
                                .frame(width:70)
                                .padding(10)
                            Text("Rash")
                                .frame(width:70)
                                .padding(10)
                            Text("Goggins")
                                .frame(width:70)
                                .padding(9)
                            Text("Zett")
                                .frame(width:70)
                                .padding(8)
                        }
                        .offset(x:0, y: -20)
                        .font(.system(size:18))
                    }
                   
                    
                    
                    Spacer()
                    HStack{
                        // Navigation
                        VStack {
                            Spacer()
//                            Text("This is Main page.")
//                                .bold()
                            NavigationLink(destination: SecondPage(firstNaviLinkActive: $firstNaviLinkActive), isActive: $firstNaviLinkActive) {
                                Text("뒤로가기")
                                
//                                    .buttonStyle(.borderedProminent)
                                    .font(.system(size: 24))
                                
                                    .foregroundColor(Color.white)
                                    .frame(width: 120, height: 60, alignment: .center)
                                    .background(RoundedRectangle(cornerRadius: 50)
                                    .fill(Color.orange))
                                    .offset(y: -15) // <- ok // 17 차이
                                

                                /* ==============Erase==============
                                    .fontDesign(.rounded)
                                    .buttonStyle(.borderedProminent)
                                    .buttonBorderShape(.capsule)
                                    .font(.system(size: 24))
                                    .controlSize(.large)
                                    .offset(y: 17)
                                 */
                                
                            }
                            .navigationBarHidden(true)
                        }
                        // Navigation End
                        
//================================기존 버튼 제거==============================//
//                        Button ("뒤로가기") {
//                            print("back")
//                        }
//                        //                    .bold()
//                        //                    .fontDesign(.rounded)
//                        .buttonStyle(.borderedProminent) // Basic button style
//                        .buttonBorderShape(.capsule) // capsule style
//                        .font(.system(size: 24))
//                        .controlSize(.large)
//
//                        Spacer()
//                        Spacer()
//                        Spacer()
//=========================================================================//
                        
                        // Rounded Text is available on iOS 16.1
                        // So we have to use below code ->
                        if #available(iOS 16.1, *) {
                            Button("시작하기"){ // Act below code
                                animate.toggle() // return true / false
                                print("실행 출력")
                                playSound(sound: "chimeup", type: "mp3") //🟡🟡🟡
                                isOnboardingViewActive = true

                            }
                            .fontDesign(.rounded)
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .font(.system(size: 24))
                            .controlSize(.large)
                            .offset(x: 175, y: -10)

                            
                        } else {
                            Button("시작하기"){ // Act below code
                                animate.toggle() // return true / false
                                print("실행 출력")
                                playSound(sound: "chimeup", type: "mp3") //🟡🟡🟡

                            }
                            .buttonStyle(.borderedProminent)
                            .buttonBorderShape(.capsule)
                            .font(.system(size: 24))
                            .controlSize(.large)
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
        .onAppear(perform: { //(2) Main Thread
            // (1) this dispatch queue is responsible for executing any user or system activity
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { isAnimating = false // it moves three seconds later
                
            })
        })
    }
}


//landscapeView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView().previewInterfaceOrientation(.landscapeRight) // 🔴🔴🔴
        AnotherView()
    }
}
