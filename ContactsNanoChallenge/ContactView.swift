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
                    .frame(width: 400, height: 400)
                
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
                            .frame(width:90, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "message.fill")
                                .font(.title2)
                            
                            Text("message").font(.caption)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:90, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "phone.fill")
                                .font(.title2)
                            
                            Text("iPhone").font(.caption)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:90, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "video.fill")
                                .font(.title2)
                            
                            Text("FaceTime").font(.caption)
                            
                        }.foregroundStyle(.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .frame(width:90, height: 60)
                            .foregroundStyle(.gray)
                        VStack{
                            Image(systemName: "envelope.fill")
                                .font(.title2)
                            
                            Text("mail").font(.caption).foregroundStyle(.white)
                            
                        }.foregroundStyle(.white)
                    }
                }
                
            } //fino a qua per i buttons
            //                Form{
            
            //                }
            List{
                Section{
                    VStack{
                        Text("phone number")
                        
                        Text (contact?.phoneNumber ?? "")
                        // Text("contact.phoneNumber")
                    }}
                Section{
                    VStack{
                        Text("email")
                            
                            Text (contact?.email ?? "")
                        
            }
                }
                Section{
                    VStack{
                        Text("company")
                        
                        Text (contact?.company ?? "")
                    }
                }
                
            }
            // Button(action: signIn) {
            //   Text("Sign In")
            //  }
        }   .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.white]), startPoint: .top, endPoint: .bottom)) // Imposta lo sfondo con un gradiente
        
              .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContactView()
}
