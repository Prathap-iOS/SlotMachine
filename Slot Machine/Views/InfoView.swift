//
//  InfoView.swift
//  Slot Machine
//
//  Created by Prathap Reddy on 28/09/23.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
          LogoView()
          
          Spacer()
          
          Form {
            Section(header: Text("About the application")) {
              FormRowView(firstItem: "Application", secondItem: "Slot Machine")
              FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
              FormRowView(firstItem: "Developer", secondItem: "Prathap / Reddy")
              FormRowView(firstItem: "Designer", secondItem: "Prathap Reddy")
              FormRowView(firstItem: "Music", secondItem: "Sony music South")
              FormRowView(firstItem: "Website", secondItem: "https://prathap.wixsite.com")
              FormRowView(firstItem: "Copyright", secondItem: "© All rights reserved.")
              FormRowView(firstItem: "Version", secondItem: "1.5.1")
            }
          }
          .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
          Button(action: {
            audioPlayer?.stop()
            self.presentationMode.wrappedValue.dismiss()
          }) {
            Image(systemName: "xmark.circle")
              .font(.title)
          }
          .padding(.top, 30)
          .padding(.trailing, 20)
          .accentColor(Color.secondary)
          , alignment: .topTrailing
          )
          .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
          })
      }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem).foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

#Preview {
    InfoView()
}
