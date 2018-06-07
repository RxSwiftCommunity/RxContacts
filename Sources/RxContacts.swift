//
//  RxContacts.swift
//  RxContacts
//
//  Created by Satish Babariya on 07/06/18.
//  Copyright © 2018 RxContacts. All rights reserved.
//

import Contacts
import Foundation
import RxCocoa
import RxSwift

// MARK: - CNContactStore
extension Reactive where Base: CNContactStore {
    
    // MARK: - Privacy Access
    
    /// Requests access to the user's contacts.
    ///
    /// - Parameter entityType: Set to CNEntityTypeContacts.
    /// - Returns: Set granted to true if the user allows access and error is nil.
    public func requestAccess(for entityType: CNEntityType) -> Observable<Bool> {
        return Observable.create { observer in
            self.base.requestAccess(for: entityType, completionHandler: { bool, error in
                if let error = error {
                    observer.onError(error)
                }
                observer.onNext(bool)
                observer.onCompleted()
            })
            return Disposables.create()
        }
    }
    
    // MARK: - Fetching Unified Contacts
    
    /// Fetches all unified contacts matching the specified predicate.
    ///
    /// - Parameters:
    ///   - predicate: The predicate to match against.
    ///   - keys: The properties to fetch in the returned CNContact objects. You should fetch only the properties that you plan to use. Note that you can combine contact keys and contact key descriptors.
    /// - Returns: An array of CNContact objects matching the predicate.
    public func unifiedContacts(matching predicate: NSPredicate,
                                keysToFetch keys: [CNKeyDescriptor]) -> Observable<[CNContact]> {
        return Observable.create { observer in
            do {
                observer.onNext(try self.base.unifiedContacts(matching: predicate, keysToFetch: keys))
                observer.onCompleted()
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    /// Fetches a unified contact for the specified contact identifier.
    ///
    /// - Parameters:
    ///   - identifier: The identifier of the contact to fetch.
    ///   - keys:     The properties to fetch in the returned CNContact object.
    /// - Returns: A unified contact matching or linked to the identifier.
    public func unifiedContact(withIdentifier identifier: String,
                               keysToFetch keys: [CNKeyDescriptor]) -> Observable<CNContact> {
        return Observable.create { observer in
            do {
                observer.onNext(try self.base.unifiedContact(withIdentifier: identifier, keysToFetch: keys))
                observer.onCompleted()
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    // MARK: - Fetching and Saving
    
    /// Fetches all groups matching the specified predicate.
    ///
    /// - Parameter predicate: The predicate to use to fetch the matching groups. Set predicate to nil to match all groups.
    /// - Returns: An array of CNGroup objects that match the predicate.
    public func groups(matching predicate: NSPredicate?) -> Observable<[CNGroup]> {
        return Observable.create { observer in
            do {
                observer.onNext(try self.base.groups(matching: predicate))
                observer.onCompleted()
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    /// Fetches all containers matching the specified predicate.
    ///
    /// - Parameter predicate: The predicate to use to fetch matching containers. Set this property to nil to match all containers.
    /// - Returns: An array of CNContainer objects that match the predicate.
    public func containers(matching predicate: NSPredicate?) -> Observable<[CNContainer]> {
        return Observable.create { observer in
            do {
                observer.onNext(try self.base.containers(matching: predicate))
                observer.onCompleted()
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    /// Returns a Boolean value that indicates whether the enumeration of all contacts matching a contact fetch request executed successfully.
    ///
    /// - Parameter fetchRequest: The contact fetch request that specifies the search criteria.
    /// - Returns: true if enumeration of all contacts matching a contact fetch request executes successfully; otherwise, false
    public func enumerateContacts(with fetchRequest: CNContactFetchRequest) -> Observable<(CNContact, UnsafeMutablePointer<ObjCBool>)> {
        return Observable.create { observer in
            do {
                try self.base.enumerateContacts(with: fetchRequest, usingBlock: { contact, pointer in
                    observer.onNext((contact, pointer))
                    observer.onCompleted()
                })
                
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    #if os(iOS) || os(OSX)
    
    /// Executes a save request and returns success or failure.
    ///
    /// - Parameter saveRequest: The save request to execute.
    /// - Returns: true if the save request executes successfully; otherwise, false.
    public func execute(_ saveRequest: CNSaveRequest) -> Observable<Void> {
        return Observable.create { observer in
            do {
                observer.onNext(try self.base.execute(saveRequest))
                observer.onCompleted()
            } catch {
                observer.onError(error)
            }
            return Disposables.create()
        }
    }
    
    #endif
    
    /// Posted notifications when changes occur in another CNContactStore.
    ///
    /// - Returns: Notification Object
    public func didChange() -> Observable<Notification> {
        return NotificationCenter.default.rx.notification(NSNotification.Name.CNContactStoreDidChange)
    }
    
}

