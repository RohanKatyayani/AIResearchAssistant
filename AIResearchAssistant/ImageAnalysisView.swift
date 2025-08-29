//
//  ImageAnalysisView.swift
//  AIResearchAssistant
//
//  Created by Rohan Katyayani on 30/08/25.
//

import SwiftUI

struct ImageAnalysisView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Computer Vision")
                    .font(.largeTitle)
                    .padding()
                
                Text("Here you'll analyze images with AI")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .navigationTitle("Vision")
        }
    }
}

struct ImageAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        ImageAnalysisView()
            .preferredColorScheme(.dark)
    }
}
