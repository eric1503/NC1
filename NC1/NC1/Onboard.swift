//
//  ContentView.swift
//  NC1
//
//  Created by Eric Angelo on 26/04/22.
//

import SwiftUI

struct Onboard: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color.init(red: 193 / 255, green: 233 / 255, blue: 250 / 255)
                    .ignoresSafeArea()
                
                ZStack{
                    
                }
                .padding(.horizontal, 20.0)
                
                
                VStack{
                    Image("image")
                    
                    ZStack{
                        Rectangle().frame(height: 320.0).ignoresSafeArea().colorInvert()
                        
                        VStack{
                            Text("Find Your Ideal Water Intake in a Day!")
                                .font(.system(size: 31))
                                .fontWeight(.semibold)
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 12.0)
                                .padding(.horizontal, 20)
                                
                                
                            
                            Text("Define how much water you need to drink in a day based on your physical needs and we will help reminding you to drink.")
                                .font(.body)
                                .fontWeight(.regular)
                                .foregroundColor(Color(red: 0.25882352941176473, green: 0.37254901960784315, blue: 0.4392156862745098))
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 42.0)
                                .padding(.horizontal,  20)
                            
                            NavigationLink(destination: weightInput()){
                                
                                Text("Get my result")
                                    .padding(.vertical, 13.0)
                                    .frame(width: 350.0)
                                    .background(Color.init(red: 89/255, green: 194/255, blue: 231/255))
                                    .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                    .cornerRadius(10)
                            }
                            
                                
                            
                    }
                }
            }
        }
}
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Onboard()
            
    }
}
}
