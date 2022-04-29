//
//  remindDrink.swift
//  NC1
//
//  Created by Eric Angelo on 28/04/22.
//

import SwiftUI

struct remindDrink: View {
    
    @State private var remindDrink = String(00)
    
    var body: some View {
        ZStack{
            Color(red: 245 / 255, green: 250 / 255, blue: 254 / 255)
                .ignoresSafeArea()
            
            VStack{
                Text("When should we help remind you to help?")
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
                            Text("EVERY")
                                .font(.system(size: 18))
                                .foregroundColor(Color(red: 151/255, green: 167/255, blue: 177/255))
                                .kerning(7)
                            
                            TextField(remindDrink, text: .constant(""))
                                .padding(.top, -10.0)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 80, weight: .semibold))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                            
                            Text("minutes")
                                .fontWeight(.semibold)
                                .font(.system(size: 40))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                .lineLimit(nil)
                                .padding(.top, -10.0)
                        }
                        .padding(.bottom, 10.0)
                    }
                }
                NavigationLink(destination: activityInput()){
                    
                    Text("Track my water")
                        .padding(.vertical, 13.0)
                        .frame(width: 350.0)
                        .background(Color.init(red: 89/255, green: 194/255, blue: 231/255))
                        .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                        .cornerRadius(10)
                }
                .padding(.top, 56.0)

            }
        }
    }
}

struct remindDrink_Previews: PreviewProvider {
    static var previews: some View {
        remindDrink()
    }
}
