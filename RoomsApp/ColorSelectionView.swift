//
//  ColorSelectionView.swift
//  RoomsApp
//
//  Created by Mohammad Azam on 11/30/21.
//

import SwiftUI

struct ColorSelectionView: View {
    
    let colors :[Color] = [.green, .red, .blue, .pink, .purple, .yellow]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                Image(systemName: selectedColor == color ? "record.circle.fill" : "circle.fill")
                    .font(.title)
                    .foregroundColor(color)
                    .clipShape(Circle())
                    .onTapGesture {
                        selectedColor = color
                    }
            }
        }
    }
}

struct ColorSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectionView(selectedColor: .constant(.blue))
    }
}
