//
//  ContentView.swift
//  NewsApplication-iOS
//
//  Created by Nathan Degryse on 11/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ArticleListView(articles: Article.all()).listStyle(PlainListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
