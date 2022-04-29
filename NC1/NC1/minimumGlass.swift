//
//  minimumGlass.swift
//  NC1
//
//  Created by Eric Angelo on 28/04/22.
//

import SwiftUI

struct minimumGlass: View {
    var body: some View {
        ZStack{
            Color(red: 245 / 255, green: 250 / 255, blue: 254 / 255)
                .ignoresSafeArea()
            
            VStack{
                Text("Minimum glass of water for you each day is")
                    .fontWeight(.semibold)
                    .font(.system(size: 31))
                    .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 42.0)
                    .padding(.horizontal, 20)
                
                ZStack{
                    Circle().frame(width: 302, height: 302).colorInvert()
                    Circle().frame(width: 242, height: 242).colorInvert()
                        .shadow(color: .init(hue: 203/255, saturation: 42/255, brightness: 61/255, opacity: 0.2), radius: 96, x: 0, y: 10)
                    
                    VStack{
                        VStack{
                            Text(String("12"))
                                .fontWeight(.semibold)
                                .font(.system(size: 80))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                            Text("litres")
                                .fontWeight(.semibold)
                                .font(.system(size: 40))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                        }
                        .padding(.bottom, 10.0)
                        
                        Text("/ day")
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 151/255, green: 167/255, blue: 177/255))
                    }
                }
                NavigationLink(destination: activityInput()){
                    
                    Text("Next")
                        .padding(.vertical, 13.0)
                        .frame(width: 350.0)
                        .background(Color.init(red: 89/255, green: 194/255, blue: 231/255))
                        .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                        .cornerRadius(10)
                }
                .padding(.top, 56.0)
                
                Text("*1 glass = 0.25 L")
                    .padding(.top, 8.0)
                    .foregroundColor(.init(red: 151/255, green: 167/255, blue: 177/255))
            }
        }
    }
}

struct minimumGlass_Previews: PreviewProvider {
    static var previews: some View {
        minimumGlass()
    }
}
