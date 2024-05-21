//
//  SlidersView.swift
//  EventoRoss
//
//  Created by Jairo Laurente Celis on 15/05/24.
//

import SwiftUI

struct SlidersView: View {
    @State private var curretnIndex = 0
    var slides : [String] = ["decoracion_4","decoracion_5","decoracion_6","decoracion_3","decoracion_2"]
    var body: some View {
        ZStack(alignment: .bottomLeading){
            ZStack(alignment: .trailing){
                Image(slides[curretnIndex])
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack{
                ForEach(0..<slides.count, id: \.self){ slide in
                    Circle()
                        .fill(self.curretnIndex == slide ? Color("brownOpacity") : Color(.white))
                        .frame(width: 10)
                       
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if self.curretnIndex + 1 == self.slides.count{
                    self.curretnIndex = 0
                }else{
                    self.curretnIndex += 1
                }
            }
            }
    }
}

#Preview {
    SlidersView()
}
