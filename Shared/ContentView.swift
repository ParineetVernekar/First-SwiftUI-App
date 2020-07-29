//
//  ContentView.swift
//  Shared
//
//  Created by Parineet Vernekar on 29/07/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            TabView{
                Tab1().tabItem {Image(systemName: "swift"); Text("SwiftUI")}.tag(1)
            Tab2().tabItem {Image(systemName: "keyboard"); Text("React Native")}.tag(1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Tab1: View{
    var body: some View{
        NavigationView{
        VStack {
            Image("swiftUI.png")
            Text("SwiftUI is a brilliant new framework built by Apple. It was introduced at WWDC19 and all apps built with it only work on iOS13 and above. It uses the Swift programming language. It is a new and special way of making apps for Apple's Platforms. Xcode 11 and above shows live previews of your app, from adding a new List to simply adding punctuation to text.")
                .padding([.top, .leading, .trailing])
            Text("Using SwiftUI means that you can make apps for iOS, iPadOs and macOS all at the same time!")
                .padding([.top, .leading, .trailing])
            Text("Use SwiftUI Today to speed up your app developments, see live previews of your app as you're building them!")
                .padding([.top, .leading, .trailing])
            Spacer()

        }.navigationTitle("SwiftUI")
        }
    }
}

struct Tab2: View{
    var body: some View{
        NavigationView{
            VStack{
                Text("React native is a framwork built on top of ReactJS, which is a framework built on top of JavaScript, similar to NodeJS. It works using Elements, similar to HTML. Furthermore, it is multi-platform - it works on iOS, Android, iPad, the web, and is being developed for Windows and macOS too! Imagine writing one app for 6 different platforms, all at once!")
                    .padding([.top, .leading, .trailing])
                Text("Furthermore, it is very easy to use; you can build custom components, use external librarys and make very native looking apps.")
                    .padding([.top, .leading, .trailing])
                Text("There is also a framework called Expo, built on top of React Native, to make building apps even easier! It has automatic refreshing - as soon as you update your code, your app will refresh on your simulator or device!")
                    .padding([.top, .leading, .trailing])
                Spacer()
            }.navigationTitle("React Native")
        }
    }
}
