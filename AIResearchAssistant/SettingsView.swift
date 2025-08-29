//
//  SettingsView.swift
//  AIResearchAssistant
//
//  Created by Rohan Katyayani on 30/08/25.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("App Settings")
                    .font(.largeTitle)
                    .padding()
                
                Text("Configure your AI assistant here")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
