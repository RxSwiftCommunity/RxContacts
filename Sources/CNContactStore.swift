//
//  CNContactStore.swift
//  RxContacts-iOS
//
//  Created by Satish on 07/06/18.
//  Copyright © 2018 RxContacts. All rights reserved.
//

import Foundation
//import Contacts
//
//extension Reactive where Base: CNContactStore {
//    public func requestAccess(for entityType: CNEntityType) -> Observable<Bool> {
//        return Observable.create { observer in
//            self.base.requestAccess(for: entityType, completionHandler: { bool, error in
//                if let error = error {
//                    observer.onError(error)
//                }
//                observer.onNext(bool)
//                observer.onCompleted()
//            })
//            return Disposables.create()
//        }
//    }
//
//
//    /// Fetches all unified contacts matching the specified predicate.
//    ///
//    /// - Parameters:
//    ///   - predicate: The predicate to match against.
//    ///   - keys: The properties to fetch in the returned CNContact objects. You should fetch only the properties that you plan to use. Note that you can combine contact keys and contact key descriptors.
//    /// - Returns: Error information, if an error occurred.
//    public func unifiedContacts(matching predicate: NSPredicate,
//                                keysToFetch keys: [CNKeyDescriptor]) -> Observable<[CNContact]> {
//        return Observable.create { observer in
//            do{
//                observer.onNext(try self.base.unifiedContacts(matching: predicate, keysToFetch: keys))
//                observer.onCompleted()
//            }catch{
//                observer.onError(error)
//            }
//            return Disposables.create()
//        }
//    }
//}

