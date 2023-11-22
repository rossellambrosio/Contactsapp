//
//  ContactView.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 17/11/23.
//

import SwiftUI


struct ContactView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    @State var contact: Contact?
    
    var body: some View {
        VStack{
            Section {
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 100.0)
                    .frame(width: 400, height: 400)
                    .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                HStack{
                    Text(contact?.name ?? "name").font(.title)
                    Text(contact?.surname ?? "surname").font(.title)
                }
            }
            
            Section{
               
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
                
            } 
            List{
                Section{
                    VStack{
                        HStack{
                            Text("phone number")
                            Spacer()
                        }
                        
                        HStack{
                            
                            Text (contact?.phoneNumber ?? "")
                            // Text("contact.phoneNumber")
                            Spacer()
                        }
                    }
                }
                
                Section{
                    VStack{
                        HStack{
                            Text("email")
                            Spacer()
                        }
                        HStack{
                            Text (contact?.email ?? "")
                            Spacer()
                        }
                    }
                }
            
                Section{
                    VStack{
                        HStack{
                            Text("company")
                                Spacer()
                        }
                        HStack{
                            Text (contact?.company ?? "")
                            Spacer()
                        }
            }
                }
                
                Button(role: .destructive, action: {
                    modelContext.delete(contact!)
                    dismiss()
                }, label: {
                    Text("Delete contact")
                })
            }
            
        }   .background(LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.white]), startPoint: .top, endPoint: .bottom)) // Imposta lo sfondo con un gradiente
        
              .edgesIgnoringSafeArea(.all)
    
    }
}

#Preview {
    ContactView(
        //contact: Contact(name: "Giorgio", surname: "asas", phoneNumber: "21941939131", company: "casd", email: "ababaabba@gmail.com")
    )
}
