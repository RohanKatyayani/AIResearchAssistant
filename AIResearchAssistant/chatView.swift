//
//  chatView.swift
//  AIResearchAssistant
//
//  Created by Rohan Katyayani on 30/08/25.
//

import SwiftUI

struct ChatView: View {
    @State private var messages: [Message] = [
        Message(text: "Hello! I'm your AI assistant. How can I help you today?", isUser: false),
        Message(text: "Can you help me research machine learning?", isUser: true)
    ]
    @State private var newMessage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Message list
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(messages) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.horizontal)
                }
                
                // Message input
                HStack {
                    TextField("Type your message...", text: $newMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.leading)
                    
                    Button(action: sendMessage) {
                        Image(systemName: "paperplane.fill")
                            .padding(10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .padding(.trailing)
                    .disabled(newMessage.trimmingCharacters(in: .whitespaces).isEmpty)
                }
                .padding(.vertical, 8)
                .background(Color(.systemGray6))
            }
            .navigationTitle("AI Assistant")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    func sendMessage() {
        let trimmedMessage = newMessage.trimmingCharacters(in: .whitespaces)
        guard !trimmedMessage.isEmpty else { return }
        
        let userMessage = Message(text: trimmedMessage, isUser: true)
        messages.append(userMessage)
        newMessage = ""
        
        // Simulate AI response (we'll replace this with real AI later)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            let aiMessage = Message(text: "I'm thinking about: \(trimmedMessage)", isUser: false)
            messages.append(aiMessage)
        }
    }
}

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct MessageBubble: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
                Text(message.text)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(18)
                    .padding(.leading, 50)
            } else {
                Text(message.text)
                    .padding()
                    .background(Color(.systemGray5))
                    .foregroundColor(.primary)
                    .cornerRadius(18)
                    .padding(.trailing, 50)
                Spacer()
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
            .preferredColorScheme(.dark)
    }
}
