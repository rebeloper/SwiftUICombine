//
//  ContentView.swift
//  Shared
//
//  Created by Alex Nagy on 28.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        ScrollView {
            Button {
                viewModel.startFetch()
            } label: {
                Text("Start")
            }
            
            Text(viewModel.time)
            Text(viewModel.seconds).foregroundColor(Color(.gray))
            Text("\(viewModel.timeModel.seconds) s").foregroundColor(Color.orange)
            
            Image("ReceiveValue").resizable().scaledToFit().frame(height: 70)
            Image("FinishedCompletion").resizable().scaledToFit().frame(height: 70)
            Image("ErrorCompletion").resizable().scaledToFit().frame(height: 70)
        }
        .padding()
        .font(.system(size: 36, weight: .bold))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
