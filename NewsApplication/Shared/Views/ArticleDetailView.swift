//
//  ArticleDetailView.swift
//  NewsApplication
//
//  Created by Nathan Degryse on 11/05/2022.
//

import SwiftUI

struct ArticleDetailView: View {
    
    let article: Article
    
    var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Image(article.photo)
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                        .aspectRatio(1.0, contentMode: .fit)
                        .padding(.bottom, 20)
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(article.subject.title)
                            .font(.caption)
                            .padding(8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                            .padding([.bottom], 10)
                    }
                    
                    Text(article.description)
                    HStack {
                        Text("Rating")
                            .font(.headline)
                        RatingView(rating: .constant(article.rating))
                    }.padding(.top, 20)
                }.padding()
                
                .navigationTitle(article.name)
            }
        }
    }

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article.all()[0])
    }
}
