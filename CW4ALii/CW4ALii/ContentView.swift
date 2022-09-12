//
//  ContentView.swift
//  CW4ALI
//
//  Created by Ali AlShammari on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var items = ["Nice" , "Shani" , "Pizza" , "Water" , "Pepsi" , "Pringles"]
    @State var String = ""
    var body: some View {
        VStack{
            List(items, id: \.self) {item in
            HStack{
                Image(item)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                Text(item)
                    .font(.largeTitle)
            }
            }
            HStack{
            Button(action: {
                if  !String.isEmpty{
                items.append(String)
                }
                
            })
            {Text("+")
                    .font(.largeTitle)
                    .frame(width: 50, height: 50)
                    .background(.green)
                    .clipShape(Capsule())
                    .padding()
                
            }
            TextField("New Item", text: $String)
                    .padding()
            
            Button(action: {
                if !items.isEmpty{
                    items.remove(at: 0)
                }
                
                })
                {Text("-")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .background(.red)
                        .clipShape(Capsule())
                        .padding()
                }
                Button(action: {items.append(items.randomElement() ?? "")
                        
                    })
                    {Text("?")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .background(.orange)
                            .clipShape(Capsule())
                            .padding()
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
