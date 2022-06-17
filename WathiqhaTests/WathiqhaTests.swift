//
//  WathiqhaTests.swift
//  WathiqhaTests
//
//  Created by Khaled Kutbi on 26/07/1443 AH.
//

import XCTest
@testable import Wathiqha

class MockDataService: DataService {
    func getInvoices(completion: @escaping ([Invoice]) -> Void) {
        let or = Orgnization(id: "4",
                             name: "KFC",
                             field: "Food and bavrages",
                             profileImageUrl: "https://Kfs.sa/image/profile",
                             contactInformations: [ContactInformation(title: "tel", value: 011900005)],
                             branches: [Branch(orgnization: "KFC",
                                               name: "Malaz branch",
                                               number: 49,
                                               contactDetails: ContactInformation(title: "tel", value: 011900005),
                                               location: Coordinates(lat: "12.95403", long: "43.94034"))]
        )
        
        let invoice = Invoice(id: "40", number: 392044, orgnization: or, cratedOn: "2020/2/3", products: [], total: 00.00, OwnershipTransfare: false)
      completion([invoice,invoice])
    }
    
    func getUser(completion: @escaping (User) -> Void) {
        let user = User(id: "$49", isVerified: true, firstName: "fkrej", lastName: "fkjre", phoneNumber: "0558293496", emailAddres: "kutbi70@gmail.com", birthDay: "1996.5.1", gender: true, jobTitle: "mobile", incomes: [Income(name: "salary", date: "49", amount: 5430.00, source: "work")], categories:[])
        completion(user)
    }
}
class WathiqhaTests: XCTestCase {

    var sotProfile :ProfileViewModel!
    var sotInvoices : MyInvoicesViewModel!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sotProfile = ProfileViewModel(dataSerivce: MockDataService())
        sotInvoices = MyInvoicesViewModel(dataService: MockDataService())
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInvoices() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(sotInvoices.invoices.isEmpty)
        sotInvoices.getInvoices()
        XCTAssertEqual(sotInvoices.invoices.count, 2)

        
//        sotInvoices.getInvoices()
    }
    func testUser() throws{
        sotProfile.getUser()
        XCTAssertEqual(sotProfile.user?.phoneNumber.count, 10)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
