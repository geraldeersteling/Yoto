//
//  SectionItemModel.swift
//  YotoKit
//
//  Created by Gerald Eersteling on 24/11/2020.
//  Copyright © 2020 Rockstars. All rights reserved.
//

import Foundation
import RxDataSources

public enum SectionItemModel {
    case RegularGameSectionItem(uri: GameUri, name: String)
}

extension SectionItemModel: IdentifiableType {
    public var identity: some Hashable {
        switch self {
            case .RegularGameSectionItem(let uri, name: _):
                return uri
        }
    }
}

extension SectionItemModel: Equatable {
    public static func == (lhs: SectionItemModel, rhs: SectionItemModel) -> Bool {
        lhs.identity == rhs.identity
    }
}
