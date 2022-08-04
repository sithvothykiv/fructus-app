//
//  FruitRowView.swift
//  Fructus
//
//  Created by Sithvothy Infinity on 03/08/2022.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruits: Fruit
    
    var body: some View {
        HStack {
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruits.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
            
        } //HStack
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
