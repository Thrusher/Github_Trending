//
//  RepositoryDefailt.swift
//  Github_Trending
//
//  Created by Patryk Drozd on 20/09/2020.
//

import SwiftUI

struct EmptyView: View {
    var color: Color
    var body: some View {
        VStack {
            
        }.background(color)
        .foregroundColor(color)
    }
}

struct RepositoryDetailsView: View {
    
    var repository: Repository
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                EmptyView(color: .red)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    .padding(.all)
                    .background(Color.red)
                EmptyView(color: .blue)
                    .frame(width: geometry.size.width, height: geometry.size.height/2)
                    .padding(.all)
                    .background(Color.blue)
            }
        }
    }
}


struct RepositoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetailsView(repository: mockRepository)
    }
}


/*
 ScrollView {
     HStack {
         Spacer()
     }.background(Color.yellow)

     Group {
         Image("creativity")
             .resizable()
             .frame(width: 150, height: 150)
             .clipShape(RoundedRectangle(cornerRadius: 75))
         Text(repository.author)
             .lineLimit(nil)
             .font(.largeTitle)
             .foregroundColor(.red)
         Text(repository.description)
             .lineLimit(nil)
             .font(.body)
     }.padding(.all)
                 
     HStack (alignment: .center, spacing: 1) {
         Group {
             Spacer(minLength: 50)
             Text("\(repository.stars) Stars")
                 .lineLimit(1)
                 .font(.body)
                 .background(Color.yellow)
             Spacer(minLength: 50)
             Spacer(minLength: 50)
             Text("\(repository.forks) Forks")
                 .lineLimit(1)
                 .font(.body)
                 .background(Color.blue)
             Spacer(minLength: 50)
         }
//                    .padding(1)
//                    .padding(.all)
         .background(Color.red)
     }
     .frame(height: 75)
     .background(Color.black)
     .clipShape(RoundedRectangle(cornerRadius: 10))
 }.navigationBarTitle(repository.name)
}
 */
