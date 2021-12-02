//
//  ContentView.swift
//  Downloader
//
//  Created by Luca Mignatti on 11/30/21.
//

import SwiftUI
import PythonKit
import AVFoundation

struct ContentView: View {
    @State var  showResult: Bool = false
    @State var url: String = ""
    var body: some View {
        Text("Input the URL to the video you want to download below then click Download and allow it access to your downloads folder. if you followed the above steps the app may be unresponsive while downloading, but it is working if it doesn't crash.")
        TextField("Enter URL", text: $url)
        Button(action: {
            if url != "" {
                RunPythonScript(arg: url)
            }
            if url == "" {
                let systemSoundID: SystemSoundID = 1016
                AudioServicesPlaySystemSound(systemSoundID)
            }
            
        }) {
            Text("Download")
        }}}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
