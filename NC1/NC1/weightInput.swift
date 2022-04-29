//
//  weightInput.swift
//  NC1
//
//  Created by Eric Angelo on 26/04/22.
//

import SwiftUI

struct weightInput: View {
    
    @State private var userWeight = String(00)
    
    var body: some View {
            ZStack{
                Color(red: 245 / 255, green: 250 / 255, blue: 254 / 255)
                    .ignoresSafeArea()
                
                VStack{
                    Text("How much do you weight?")
                        .fontWeight(.semibold)
                        .font(.system(size: 31))
                        .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 40.0)
                    
                    ZStack{
                        Circle().frame(width: /*@START_MENU_TOKEN@*/242.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/242.0/*@END_MENU_TOKEN@*/).colorInvert()
                        
                        VStack{
                            TextField(userWeight, text: .constant(""))
                                .multilineTextAlignment(.center)
                                .font(.system(size: 80, weight: .semibold))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                            
                            Text("kg")
                                .font(.system(size: 40))
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
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
                    .padding(.top, 64.0)
                }
                .padding(.horizontal, 20.0)
            }
    }
}

struct weightInput_Previews: PreviewProvider {
    static var previews: some View {
        weightInput()
}
}
