//
//  ContentView.swift
//  NewsApplication-macOS
//
//  Created by Nathan Degryse on 11/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ArticleListView(articles: Article.all()).frame(minWidth: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
