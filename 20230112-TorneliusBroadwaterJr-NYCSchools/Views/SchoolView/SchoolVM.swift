//
//  SchoolVM.swift
//  20230112-TorneliusBroadwaterJr-NYCSchools
//
//  Created by Tornelius Broadwater, Jr on 1/12/23.
//

import Foundation

class SchoolVM: ObservableObject {
    
    @Published var schools = [School]()
    @Published var satScores = [SatScore]()
    
    func fetchSchools() {
        guard schools.count == 0 else { return }
        NetworkEngine.request(to: NYCEndpoint.fetchSchools) { (result: Result<[School], Error>) in
            switch result {
            case .success(let success):
                DispatchQueue.main.async { [unowned self] in
                    self.schools = success
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    func fetchSATScores() {
        guard satScores.count == 0 else { return }
        NetworkEngine.request(to: NYCEndpoint.fetchSATScores) { [unowned self] (result: Result<[SatScore], Error>) in
            switch result {
            case .success(let success):
                DispatchQueue.main.async { [unowned self] in
                    self.satScores = success
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    func getSAT(dbn: String) -> SatScore? {
        for i in satScores {
            if i.dbn == dbn {
                return i
            }
        }
        return nil
    }
    
}
