//
//  PayWal.swift
//  AI Art Image Generator
//
//  Created by Murtuza Chakkiwala on 08/03/23.
//

import SwiftUI

struct PayWall: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        GeometryReader{gr in
            ZStack(alignment: .topTrailing){
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack{
                        Spacer()
                        Image(systemName: "xmark.circle.fill").resizable()
                            .foregroundColor(Color.white).frame(width: 20.0, height: 20.0)
                            .aspectRatio(CGSize(width:30.0, height: 30.0), contentMode: .fit)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                   
                }.frame(maxWidth: .infinity)

            }.zIndex(1)
            VStack{
                
                VStack{
                    Image("newPayWallArt1").frame(width: gr.size.width, height: gr.size.height)
                        .aspectRatio(1,contentMode: .fill)
                        .clipped()
                }.frame(width: .infinity, height: gr.size.height * 0.3)
                
                
                
                
                VStack(){
                    Text("AI Art Generator")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white).padding([.bottom], 5)
                    
                    VStack(){
                        Spacer()
                        HStack{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.white)
                            Text("Fast Processing")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }.frame(maxWidth: .infinity).padding([.bottom], 0.5)
                        
                        HStack{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.white)
                            Text("Fast Processing")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }.frame(maxWidth: .infinity).padding([.bottom], 0.5)
                        
                        HStack{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.white)
                            Text("Fast Processing")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }.frame(maxWidth: .infinity).padding([.bottom], 0.5)
                        
                        HStack{
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.white)
                            Text("Fast Processing")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                            Spacer()
                        }.frame(maxWidth: .infinity)
                        Spacer()
                    }.padding(.horizontal)
                    
                    Spacer()
                    
                    VStack{
                        Button {
                            //
                        } label: {
                            HStack{
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(Color.green)
                                VStack(alignment: .leading){
                                    Text("3 days Free Trial")
                                        .font(.body)
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white)
                                    Text("$39.99/year")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        
                                }
                                
                                Spacer()
                                
                                Text("Most Popular").font(.caption2).fontWeight(.semibold).foregroundColor(Color.black).padding(/*@START_MENU_TOKEN@*/.all, 2.0/*@END_MENU_TOKEN@*/).background(Color(.white)).cornerRadius(5)
                            }
                            .padding(.all)
                            .frame(width: .infinity, height: 60)
                                .cornerRadius(15).overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(.green), lineWidth: 2))
                        }
                        
                        Button {
                            //
                        } label: {
                            HStack{
//                                Image(systemName: "checkmark.circle.fill")
//                                    .foregroundColor(Color.white)
                                VStack(alignment: .leading){
                                 
                                    Text("$39.99/year")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        
                                }
                                
                                Spacer()
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: .infinity, height: 60)
                                .cornerRadius(15).overlay(RoundedRectangle(cornerRadius: 15).stroke(Color(.white), lineWidth: 2))
                        }
                        
                        Button {
                            //
                        } label: {
                            Text("Try Free & Subscribe")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }.buttonStyle(PayWallSubmitBtnStyle())
                    }
                    
                    VStack{
                        Text("Cancel anytime")
                            .foregroundColor(Color.white).padding([.bottom], 10)
                            
                        
                        HStack{
                            Text("Privacy Policy")
                                .font(.caption2)
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("Restore")
                                .font(.caption2)
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("Terms of Use")
                                .font(.caption2)
                                .foregroundColor(Color.white)
                        }
                    }
                    
                }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(maxHeight: gr.size.height * 0.7)
                
                
                

                
                
            }.frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .topLeading).background(Color(.black))
        }
       
        
    }
}

struct PayWall_Previews: PreviewProvider {
    static var previews: some View {
        PayWall()
    }
}
