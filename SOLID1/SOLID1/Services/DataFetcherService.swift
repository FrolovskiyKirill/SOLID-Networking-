//
//  DataFetcherService.swift
//  SOLID1
//
//  Created by Kirill Frolovskiy on 07.10.2022.
//

import Foundation

class DataFetcherService {
    
    let dataFetcher: DataFetcher
    let localDataFetcher: DataFetcher
    
    init(dataFetcher: DataFetcher = NetworkDataFetcher(), localDataFetcher: DataFetcher = LocalDataFetcher()) {
        self.dataFetcher = dataFetcher
        self.localDataFetcher = localDataFetcher
    }

    
    func russianGames(completion: @escaping (AppGroup?) -> Void) {
        let urlRussian = "https://rss.applemarketingtools.com/api/v2/ru/apps/top-free/10/apps.json"
        dataFetcher.fetchGenericJSONData(urlString: urlRussian, response: completion)
    }
    
    func fetchFreeGames(completion: @escaping (AppGroup?) -> Void) {
        let urlFreeGames = "https://rss.applemarketingtools.com/api/v2/us/apps/top-paid/10/apps.json"
        dataFetcher.fetchGenericJSONData(urlString: urlFreeGames, response: completion)
    }
    
    func fetchCountry(completion: @escaping ([Countries]?) -> Void) {
        let urlString = "https://raw.githubusercontent.com/Softex-Group/task-mobile/master/test.json"
        dataFetcher.fetchGenericJSONData(urlString: urlString, response: completion)
    }
    
    func fetchCarUsers(completion: @escaping (CarsUsers?) -> Void) {
        let urlString = "http://45.135.164.223:5000/users"
        dataFetcher.fetchGenericJSONData(urlString: urlString, response: completion)
    }
    
    func fetchLocalCountry(completion: @escaping ([Countries]?) -> Void) {
        let localUrlString = "users.txt"
        localDataFetcher.fetchGenericJSONData(urlString: localUrlString, response: completion)
    }
}
