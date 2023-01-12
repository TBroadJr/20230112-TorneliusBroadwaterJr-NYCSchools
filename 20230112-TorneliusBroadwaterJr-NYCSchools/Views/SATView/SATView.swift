//
//  SATView.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import SwiftUI

struct SATView: View {
    var school: School
    var sat: SatScore?
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color("Background"), .blue], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                VStack {
                    Text(school.schoolName)
                        .font(.title.weight(.semibold))
                        .padding()
                        .multilineTextAlignment(.center)
                    
                    VStack {
                        Text(school.overview)
                            .font(.headline.weight(.semibold))
                    }
                    .customSection()
                    
                    if let sat = sat {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Number of SAT Takers: \(sat.numberOfSATTestTakers)")
                            Text("Critical Reading Average Score: \(sat.readingScoreAverage)")
                            Text("Math Average Score: \(sat.mathScoreAverage)")
                            Text("Writing Average Score: \(sat.writingScoreAverage)")
                        }
                        .font(.headline.weight(.semibold))
                        .customSection()
                    } else {
                        Text("No SAT Data")
                    }

                }
                .foregroundColor(.primary)

            }
        }
    }
}



//struct SATView_Previews: PreviewProvider {
//    static var previews: some View {
//        SATView(School)
//    }
//}
