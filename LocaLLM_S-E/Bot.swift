//
//  bot.swift
//  LocaLLM_S-E
//
//  Created by Thomas on 2025-04-05.
//

import SwiftUI
import LLM

class Bot: LLM {
    // Initialize with your bundled model file.
    convenience init() {
        // Replace with the exact name of your bundled model file.
        let modelURL = Bundle.main.url(forResource: "llama3.2-3bQ3", withExtension: "gguf")!
        // Set your system prompt (if using a chat template).
        let systemPrompt = "You are an AI assistance who is thriving to help, you want to answer every question as concise as possible but easy to understand. You will only answer what is being asked and never mention about the last question."
        // Use a chat template that fits your needs.
        self.init(from: modelURL, template: .chatML(systemPrompt))!
    }
}
