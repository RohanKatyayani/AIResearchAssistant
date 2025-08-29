//
//  DocumentsView.swift
//  AIResearchAssistant
//
//  Created by Rohan Katyayani on 30/08/25.
//

import SwiftUI

struct DocumentsView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Documents Management")
                    .font(.largeTitle)
                    .padding()
                
                Text("Here you'll manage documents for AI analysis")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .navigationTitle("Documents")
        }
    }
}

struct DocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsView()
            .preferredColorScheme(.dark)
    }
}
