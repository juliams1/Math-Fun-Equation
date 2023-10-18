//
//  ContentView.swift
//  Math-Fun-Equation
//
//  Created by user247327 on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var num1 = Int.random(in: 1...10)
    @State var num2 = Int.random(in: 1...10)
    @State var num3 = Int.random(in: 1...10)
    @State var num4 = Int.random(in: 1...10)
    @State var score: Int = 0
    @State var result: Int = 0
    @State var message: String = ""
    @State var showAlert: Bool = false
    
    
    
    var body: some View {
        NavigationView {
            Form{
                Section(header: Text("Qual o resultado da seguinte equação")) {
                    Text("\(num1) - \(num2) + \(num3) x \(num4)")
                }
                Section(header: Text("Coloque sua resposta abaixo")) {
                    TextField("Resultado", value: $result, formatter: NumberFormatter())
                }
                Section(header: Text("Sua pontuação é:\(score)")) {
                    Button(action: {
                        
                        if self.result == (self.num1 - self.num2, +self.num3 * self.num4) {
                            self.score += 1
                            self.message = "Arrasou! Seu score agora é \(self.score)"
                        } else {
                            self.score -= 1
                            self.message = "Oh no! não foi dessa vez, a resposta correta é \(self.num1 - self.num2, +self.num3 * self.num4)"
                        }
                        
                    }) {
                        Text("Confira")
                    }
                }
            }
        }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
