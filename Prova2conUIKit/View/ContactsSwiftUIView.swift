//
//  ContactsSwiftUIView.swift
//  Prova2conUIKit
//
//  Created by Martina Esposito on 31/03/22.
//

import SwiftUI

struct ContactsSwiftUIView: View {
    
    let contacts = [
        Contact(name: "John", surname: "Waterhouse", description: "Team Lead", phone: "+91-678-123-8765"),
        Contact(name: "Maria", surname: "Bello", description: "Programmer", phone: "+1-200-1834-1567"),
        Contact(name: "David", surname: "Duke", description: "Marketing Executive", phone: "+1-200-234-2567"),
        Contact(name: "Priyanka", surname: "Chopra", description: "Team Head", phone: "+91-657-816-7651"),
        Contact(name: "Martha", surname: "Stewart", description: "Business Analyst", phone: "+91-765-987-8543"),
        Contact(name: "John", surname: "Waterhouse", description: "Team Lead", phone: "+91-678-123-8765"),
        Contact(name: "Maria", surname: "Bello", description: "Programmer", phone: "+1-200-1834-1567"),
        Contact(name: "David", surname: "Duke", description: "Marketing Executive", phone: "+1-200-234-2567"),
        Contact(name: "Priyanka", surname: "Chopra", description: "Team Head", phone: "+91-657-816-7651"),
        Contact(name: "Martha", surname: "Stewart", description: "Business Analyst", phone: "+91-765-987-8543"),
        Contact(name: "John", surname: "Waterhouse", description: "Team Lead", phone: "+91-678-123-8765"),
        Contact(name: "Maria", surname: "Bello", description: "Programmer", phone: "+1-200-1834-1567"),
        Contact(name: "David", surname: "Duke", description: "Marketing Executive", phone: "+1-200-234-2567"),
        Contact(name: "Priyanka", surname: "Chopra", description: "Team Head", phone: "+91-657-816-7651"),
        Contact(name: "Martha", surname: "Stewart", description: "Business Analyst", phone: "+91-765-987-8543")
    ]
    
    var body: some View {
//        NavigationView{
            
//            List(contacts, id: \.name) {
            List {
//                contact in
                ForEach(contacts, id: \.self){ contact in
                    
                    ContactView(contact: contact)
                }
//                .onDelete(perform: delete)
            }
            .padding(.vertical)
//            .navigationTitle("Contacts")
//        }
    }
}

struct ContactView: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                
                Text(contact.name).font(.title2)
                Text(contact.surname).font(.title2)
            }
            
            HStack {
                Text(contact.description).font(.subheadline).fontWeight(.regular).foregroundColor(.secondary)
                Spacer()
                Text(contact.phone).font(.subheadline).fontWeight(.regular).foregroundColor(.secondary)
            }
        }
    }
}
