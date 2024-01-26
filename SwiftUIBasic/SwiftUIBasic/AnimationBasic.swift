//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by Caramella on 1/10/24.
//

import SwiftUI

struct AnimationBasic: View {
    
    @State var isAnimated : Bool = false
    let timing : Double = 0.5
    
    
    var body: some View {
        // withAnimation
        VStack{
            Button(action: {
                withAnimation(
                    .default
                        .delay(2) //2초 뒤에 시작
                        .repeatForever() // 무한 반복
                        .repeatCount(5) // 5회 반복
                )
                {isAnimated.toggle()}
            }, label: {
                Text("Button")
            })
            
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
        
        // linear , easeIn , easeOut, easeInOut
        
        VStack{
            
            Button(action: {
                isAnimated.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
            
            
            // linear : 처음 부터 끝 까지 속도 일정
            RoundedRectangle(cornerRadius: 20)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 200, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)
            
            // easeIn : 처음에 느리고 끝에 빨라짐
            // easeOut : 처음에 빠르고 끝에 느려짐
            // easeInOut : 처음과 끝에 느리고 중간에 빨라짐

        }
        
        VStack {
            Button(action: {
                withAnimation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5, 
                    blendDuration: 0))
                {isAnimated.toggle()}
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
    }
}


#if DEBUG
struct AnimationBasic_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasic()
    }
}
#endif
