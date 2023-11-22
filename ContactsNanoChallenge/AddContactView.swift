//
//  AddContactView.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 15/11/23.
//

import SwiftUI
import SwiftData

struct AddContactView: View {
    
    @Environment(\.modelContext) private var modelContext
//    @Query private var contacts: [Contact]
    
    @State var codes = [String]()
    @Environment(\.dismiss) var dismiss
    @State private var name = ""
    @State private var surname = ""
    @State private var company = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    
    var body: some View {
        NavigationView{
            VStack {
                
                Section{
                    Image("user")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                        .frame(width: 180.0, height: 180.0)
                    Text("add photo").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                Form{
                    Section{
                        TextField("Name",  text: $name)
                        
                        TextField("Surname", text:$surname)
                        TextField("Company", text:$company)
                        
                    }
                    Section{ 
                        TextField("PhoneNumber", text:$phoneNumber)
                        
                        
                    }
                    Section{ 
                        TextField("Email", text:$email)
                        
                        
                    }
                    
                    
                    
                }
                
                
                // Aggiungi altri TextField per altre informazioni
            }
            .background(Color(.systemGray6))
            .navigationBarTitle("New contact",displayMode:.inline)
            .toolbar{
                ToolbarItem(placement:.confirmationAction){
                    Button("Done"){
                        addContact()
                        dismiss()
                    }
                }
                ToolbarItem(placement:.navigationBarLeading){
                    Button("Cancel",role: .cancel){
                        dismiss()
                    }
                }
            }
        }
    }
    func addContact(){
        let item = Contact(name: name, surname: surname, phoneNumber: phoneNumber, company: company)
        item.name = name
        item.surname = surname
        item.phoneNumber = phoneNumber
        item.company = company
      
       
        modelContext.insert(item)
        try? modelContext.save()
    }
    
}


#Preview {
    AddContactView()
}


