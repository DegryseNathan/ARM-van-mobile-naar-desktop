//
//  ArticleListView.swift
//  NewsApplication
//
//  Created by Nathan Degryse on 11/05/2022.
//

import SwiftUI

enum FilterSubject: String, CaseIterable, Identifiable {
    
    case all = "All"
    case internationaal = "Internationaal"
    case regionaal = "Regionaal"
    case sport = "Sport"
    case politiek = "Politiek"
    
    var id: FilterSubject { self }
}

struct ArticleListView: View {
    let articles: [Article]
    @State private var filter = FilterSubject.all
       
       var filterArticles: [Article] {
           articles.filter { article in
               (filter == .all) || (article.subject.rawValue == filter.rawValue)
           }
       }
    
    var body: some View {
            List(filterArticles) { article in
                NavigationLink(
                    destination: ArticleDetailView(article: article),
                    label: {
                        HStack {
                            Image(article.photo)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                            Text(article.name)
                                .font(.headline)
                        }.padding(6)
                    })
            }.toolbar {
                ToolbarItem {
                    Menu {
                        Picker("Subject", selection: $filter) {
                            ForEach(FilterSubject.allCases) {
                                Text($0.rawValue).tag($0)
                            }
                        }
                    } label: {
                        Label("Filter", systemImage: "slider.horizontal.3")
                    }
                }
            }
            
            
            .navigationTitle("Articles")
        }
    }
