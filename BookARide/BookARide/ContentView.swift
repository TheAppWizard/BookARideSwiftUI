//
//  ContentView.swift
//  BookARide
//
//  Created by Shreyas Vilaschandra Bhike on 24/05/22.
//  MARK: Instagram
//  TheAppWizard
//  MARK: theappwizard2408

//  MARK: Assets Credit
//  Humans 3.0 -
//  https://humans.wannathis.one/


import SwiftUI


struct ContentView: View {
    var body: some View {
        FinalView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}















struct FinalView: View {
    @State var splashScreen  = true

    var body: some View {
         ZStack{
            Group{
              if splashScreen {
                  SplashScreen()
               }
              else{
                  MainView()
                    }
                }
               .onAppear {
                  DispatchQueue
                       .main
                       .asyncAfter(deadline:
                            .now() + 3.5) {
                   splashScreen = false
                  }
                }
            }
        }
    }



struct SplashScreen: View {
    @State private var animateOffset = false
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            

            
            
            
            ZStack{
                
                
 
                
            Circle()
                .frame(width: 600, height: 600)
                .foregroundColor(Color("colgreen"))
                .offset(x: 0, y: animateOffset ? -230 : -800)
            
            
                
                ZStack{
            Circle()
                .frame(width: 550, height: 550)
                .foregroundColor(Color("colgreen2").opacity(0.4))
                    
                    Image("logo")
                            .resizable()
                            .frame(width: 400, height: 220)
                            .offset(x: -10, y: 30)
                    
                }
                .offset(x: 0, y: animateOffset ? -270 : -800)
                
            }
            .animation(.easeOut(duration: 2), value: animateOffset)
            .onAppear(perform: {
                animateOffset = true
            })
            
            
            VStack{


                Spacer()
                
                LottieView(filename: "load")
                    .frame(width: 300, height: 100)
            
            
            
            
          
         
               
            
            }
            
            
            
            
            
           
        }
    }
}






struct MainView: View {
    
    @State var selectedPage = 0
    @State private var book = false
    @State private var track = false
    @State private var ride = false
    
    var body: some View {
        
        // Main Stack
       
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .frame(width: 600, height: 600)
                .foregroundColor(Color("colgreen"))
                .offset(x: 0, y: -230)
            
            
            Circle()
                .frame(width: 550, height: 550)
                .foregroundColor(Color("colgreen2").opacity(0.4))
                .offset(x: 0, y: -270)
            
            
            TabView(selection: $selectedPage)
            {
                ForEach(0..<testData.count){
                    index in CardView(card : testData[index]).tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            

            //Selected Pages
            if (selectedPage == 0)
            {
                
                ZStack{
                    
                    CircleView().offset(x: -100, y: -50)
                    
                    Image("book")
                            .resizable()
                            .frame(width: 600, height: 600)
                    
                    
                    ZStack{
                    Image(systemName: "message.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                        .scaleEffect(book ? 1 : 0)
                        
                        Image(systemName: "car.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .opacity(0.3)
                            .scaleEffect(book ? 1 : 0)
                            .opacity(book ? 1 : 0)
                    }
                    .animation(.easeOut(duration: 2), value: book)
                    .onAppear(perform: {
                        book = true
                    })
                        .offset(x: 20, y: -120)
                        
                }
                    .offset(x: 100, y: -150)
            }
            
            if (selectedPage == 1)
            {
                
                ZStack{
                    
                    CircleView().offset(x: -100, y: -50)
                
                    Image("ride")
                       .resizable()
                       .frame(width: 600, height: 600)
                       .offset(x: ride ? 0 : -30, y: ride ? 0 : -100)
                       .animation(.easeOut(duration: 2), value: ride)
                       .onAppear(perform: {
                           ride = true
                       })
                    
                    
                }
                       .offset(x: 100, y: -150)
            }
            
            
            if (selectedPage == 2)
            {
                ZStack{
                    
                    CircleView()  .offset(x: -100, y: -50)
                    
                    Image("track")
                       .resizable()
                       .frame(width: 600, height: 600)
                    
                    ZStack{
                    Image(systemName: "message.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70))
                        .scaleEffect(track ? 1 : 0)
                        
                        Image(systemName: "map")
                            .foregroundColor(.black)
                            .font(.system(size: 30))
                            .opacity(0.3)
                            .scaleEffect(track ? 1 : 0)
                            .opacity(track ? 1 : 0)
                        
                    }
                    .animation(.easeOut(duration: 2), value: track)
                    .onAppear(perform: {
                        track = true
                    })
                        .offset(x: 10, y: -140)
                    
                    
                    
                }
                .offset(x: 100, y: -150)
                
                Button(action : {
                    selectedPage += 1
                })
                {
                  Image(systemName: "chevron.right")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 18, height: 30)
                }

                .offset(x: 150, y: 400)
            }
        }
       
    }
}

///

///
