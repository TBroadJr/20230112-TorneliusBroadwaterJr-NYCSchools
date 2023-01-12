//
//  SchoolComponent.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import SwiftUI

struct SchoolComponent: View {
    var school: School
    var body: some View {
        VStack {
            Text(school.schoolName)
                .font(.headline.weight(.semibold))
                .foregroundColor(.primary)
                .lineLimit(2)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .padding()
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
    }
}

//struct SchoolComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        SchoolComponent()
//    }
//}
