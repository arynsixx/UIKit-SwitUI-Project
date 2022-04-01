//
//  RecentsSwiftUIView.swift
//  Prova2conUIKit
//
//  Created by Martina Esposito on 31/03/22.
//

import SwiftUI

struct RecentsSwiftUIView: View {
    
    let contacts = [
        RecentContact(name: "John", surname: "Waterhouse", call: .red, time: "8:55 AM"),
        RecentContact(name: "Maria", surname: "Bello", call: .green, time: "11:20 PM"),
        RecentContact(name: "David", surname: "Duke", call: .green, time: "10:45 PM"),
        RecentContact(name: "Priyanka", surname: "Chopra", call: .red, time: "6:25 PM"),
        RecentContact(name: "Martha", surname: "Stewart", call: .green, time: "4:40 PM"),
        RecentContact(name: "John", surname: "Waterhouse", call: .red, time: "3:30 PM"),
        RecentContact(name: "Maria", surname: "Bello", call: .red, time: "1:13 PM"),
        RecentContact(name: "David", surname: "Duke", call: .green, time: "10:40 AM"),
        RecentContact(name: "Priyanka", surname: "Chopra", call: .green, time: "10:20 AM"),
        RecentContact(name: "Martha", surname: "Stewart", call: .red, time: "9:40 AM"),
        RecentContact(name: "John", surname: "Waterhouse", call: .red, time: "8:55 AM"),
        RecentContact(name: "Maria", surname: "Bello", call: .green, time: "11:20 PM"),
        RecentContact(name: "David", surname: "Duke", call: .green, time: "10:45 PM"),
        RecentContact(name: "Priyanka", surname: "Chopra", call: .red, time: "6:25 PM"),
        RecentContact(name: "Martha", surname: "Stewart", call: .green, time: "4:40 PM"),
        RecentContact(name: "John", surname: "Waterhouse", call: .red, time: "3:30 PM"),
        RecentContact(name: "Maria", surname: "Bello", call: .red, time: "1:13 PM"),
        RecentContact(name: "David", surname: "Duke", call: .green, time: "10:40 AM"),
        RecentContact(name: "Priyanka", surname: "Chopra", call: .green, time: "10:20 AM"),
        RecentContact(name: "Martha", surname: "Stewart", call: .red, time: "9:40 AM")
    ]
    var body: some View {
//        NavigationView{
            List{
                ForEach(contacts, id: \.self){ contact in
                    
                    RecentView(contact: contact)
                }
            }
            .padding(.vertical)
//            .navigationTitle("Recents")
//        }
    }
}

struct RecentView: View {
    var contact: RecentContact
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack{
                Image(systemName: "phone.fill.arrow.up.right")
                    .foregroundColor(contact.call)
                VStack{
                    HStack{
                        Text(contact.name).font(.title2)
                        Text(contact.surname).font(.title2)
                        
                        Spacer()
                    }
                    
//                    HStack{
//                        Text(contact.description).font(.subheadline)
//                        Spacer()
//                    }
                    
                }
                Spacer()
                
                Text(contact.time).font(.subheadline).fontWeight(.bold).foregroundColor(.secondary)
            }
        }
    }
}
