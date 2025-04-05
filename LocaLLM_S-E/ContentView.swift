//
//  ContentView.swift
//  LocaLLM_S-E
//
//  Created by Thomas on 2025-04-05.
//

import SwiftUI

struct ContentView: View {
    // Create an instance of your Bot.
    @StateObject private var bot = Bot()
    
    var body: some View {
        BotView(bot: bot)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        imageView.image = UIImage(named: "ls2")
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
    }
}
