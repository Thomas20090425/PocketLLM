//
//  BotView.swift
//  LocaLLM_S-E
//
//  Created by Thomas on 2025-04-05.
//

import SwiftUI

struct BotView: View {
    @ObservedObject var bot: Bot
    @State private var input: String = ""
    
    // Trigger the bot's response asynchronously.
    func respond() {
        let currentInput = input
        input = ""
        Task { await bot.respond(to: currentInput) }
    }
    
    // Optionally, allow stopping the generation if needed.
    func stop() { bot.stop() }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Pocket LLM (Marihack Demo)\nMade by: Yuecheng (Thomas) Ma, Ricardo He Chen & Jingning Qiao")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.bottom, 8)
                .frame(maxWidth: .infinity)
            // Display output in a scrollable, monospaced text area.
            ScrollView {
                Text(bot.output)
                    .monospaced()
                    .padding()
            }
            Divider()
            HStack {
                // Input field with a rounded background.
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .foregroundStyle(.thinMaterial)
                        .frame(height: 40)
                    TextField("Enter your question", text: $input)
                        .padding(8)
                        .onSubmit { respond() }
                }
                // Send button with conditional background color and disabled state.
                Button(action: respond) {
                    Image(systemName: "paperplane.fill")
                        .frame(width: 40, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(input.isEmpty ? Color.gray.opacity(0.2) : Color.accentColor.opacity(0.2))
                        )
                        .shadow(color: Color.gray, radius: 2, x: 0, y: 2)
                }
                .disabled(input.isEmpty)
            }
            .padding()
        }
        .padding()
    }
}
