//
//  ContentView.swift
//  AIResearchAssistant
//
//  Created by Rohan Katyayani on 30/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ChatView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Chat")
                }
            
            DocumentsView()
                .tabItem {
                    Image(systemName: "doc.text.fill")
                    Text("Documents")
                }
            
            ImageAnalysisView()
                .tabItem {
                    Image(systemName: "photo.fill")
                    Text("Vision")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
