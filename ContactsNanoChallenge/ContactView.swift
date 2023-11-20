//
//  ContactView.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 17/11/23.
//

import SwiftUI


struct ContactView: View {
    
    var contact: Contact?
    
    var body: some View {
        VStack{
            Section {
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 100.0)
                    .frame(width: 360, height: 360)
                
                HStack{
                    Text(contact?.name ?? "Name").font(.title)
                    Text(contact?.surname ?? "Surname").font(.title)
                }
            }
            
            Section{
                //copia da qua per i buttons
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:80, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "message.fill")
                                .font(.title)
                            
                            Text("message").font(.subheadline)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:80, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "phone.fill")
                                .font(.title)
                            
                            Text("iPhone").font(.subheadline)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:80, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "video.fill")
                                .font(.title)
                            
                            Text("FaceTime").font(.subheadline)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:80, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "envelope.fill")
                                .font(.title)
                            
                            Text("mail").font(.subheadline).foregroundStyle(.white)
                            
                        }.foregroundStyle(.white)
                    }
                }
                
            } //fino a qua per i buttons
            //                Form{
            
            //                }
            List{
                Section(header: Text("phone number")){
                    
                    Text (contact?.phoneNumber ?? "phone number")
                    // Text("contact.phoneNumber")
                }
                Section(header: Text("email")){
                    
                    Text (contact?.email ?? "email")
                    
                }
                
            }
            // Button(action: signIn) {
            //   Text("Sign In")
            //  }
        }  .background(Color.blue.opacity(0.4))
              .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContactView()
}
