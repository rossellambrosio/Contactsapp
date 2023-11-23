//
//  ContentView.swift
//  ContactsNanoChallenge
//
//  Created by Rossella Ambrosio on 14/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var showModal = false
    @State private var isAddingContact = false
    @State private var searchText = ""
    //    var viewModel = ContactModel()
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) private var context
    @Query private var contacts: [Contact]
    
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                CardView().padding([.leading, .trailing])//.listRowSeparator(.hidden)
                ForEach(contacts.filter { contact in
                    searchText.isEmpty ||
                        contact.name.localizedCaseInsensitiveContains(searchText) ||
                        contact.surname.localizedCaseInsensitiveContains(searchText)
                }) {contact in
                    NavigationLink (destination: ContactView(contact:contact)){
                        
                        VStack {
                            HStack {
                                Text(contact.name).bold()
                                Text(contact.surname).bold()
                            }
                           
                        }
                    }.accessibilityLabel(contact.name + contact.surname)
                    
                }
          
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
            .searchable(text: $searchText)
            .navigationBarItems(trailing:
                                    Button(action: {
                self.isAddingContact = true
            }) {
                Image(systemName: "plus")
            }
            )
            .sheet(isPresented: $isAddingContact) {
                AddContactView()
            }
            
        }
        
        
    }
}




#Preview {
    ContentView()
}





