//
//  activityInput.swift
//  NC1
//
//  Created by Eric Angelo on 27/04/22.
//

import SwiftUI

struct activityInput: View {
    
    var body: some View {
            ZStack{
                Color(red: 245 / 255, green: 250 / 255, blue: 254 / 255)
                    .ignoresSafeArea()
                
                VStack{
                    Text("How do you measure your daily activity?")
                        .fontWeight(.semibold)
                        .font(.system(size: 31))
                        .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 42.0)
                        .padding(.horizontal, 20)
                    
                    HStack{
                        VStack(alignment: .center){
                            Image("sofs")
                                .padding(.bottom, 8.0)
                            Text("Sedentary")
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                .font(.system(size: 17))
                        }
                        .padding(.vertical, 20.0)
                        .padding(.horizontal, 10)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .cornerRadius(10)
                        .frame(width: 103, height: 126)
                        
                        VStack(alignment: .center){
                            Image("run")
                                .padding(.bottom, 8.0)
                            Text("Moderate")
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                .font(.system(size: 17))
                        }
                        .padding(.vertical, 20.0)
                        .padding(.horizontal, 10)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .shadow(color: .init(hue: 203/255, saturation: 42/255, brightness: 61/255, opacity: 0.3), radius: 96, x: 0, y: 10)
                        .cornerRadius(10)
                        .frame(width: 103, height: 126)
                        
                        VStack(alignment: .center){
                            Image("dumbell")
                                .padding(.bottom, 8.0)
                            Text("Extreme")
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.03529411764705882, green: 0.17647058823529413, blue: 0.25882352941176473))
                                .font(.system(size: 17))
                        }
                        .padding(.vertical, 20.0)
                        .padding(.horizontal, 10)
                        .background(Color(red: 1.0, green: 1.0, blue: 1.0))
                        .cornerRadius(10)
                        .frame(width: 103.0, height: 126)
                    }
                    
                    NavigationLink(destination: resultScreen()){
                        
                        Text("Get my result")
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

struct activityInput_Previews: PreviewProvider {
    static var previews: some View {
        activityInput()
    }
}
}
