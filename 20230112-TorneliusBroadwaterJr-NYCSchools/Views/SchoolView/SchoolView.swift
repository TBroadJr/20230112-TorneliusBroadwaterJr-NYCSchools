//
//  SchoolView.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import SwiftUI

struct SchoolView: View {
    @StateObject private var vm = SchoolVM()
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color("Background"), .blue], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                ScrollView {
                    ForEach(vm.schools) { school in
                        NavigationLink {
                            SATView(school: school, sat: vm.getSAT(dbn: school.dbn))
                        } label: {
                            SchoolComponent(school: school)
                                .padding()
                                .accentColor(.black)
                        }
                        
                    }
                }
                
                .navigationTitle("NYC Schools")
            }
        }
        .onAppear {
            vm.fetchSchools()
            vm.fetchSATScores()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolView()
    }
}
