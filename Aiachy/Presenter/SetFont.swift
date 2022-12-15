//
//  FontSet.swift
//  Aiachy
//
//  Created by NomoteteS on 30.07.2022.
//

import Foundation
import SwiftUI

// MARK: - Get from FontSet
private var getFont = Fonts()
private var getSize = FontSize()

// MARK: - Update last Fonts
extension Font {
    static let Regular11 : Font = .custom(getFont.RegularType, size: getSize.Little)
    static let Regular12 : Font = .custom(getFont.RegularType, size: getSize.Regular)
    
    static let Thin : Font = .custom(getFont.ThinType, size: 0)
    
    static let Light : Font = .custom(getFont.LightType, size: getSize.Little)
    
    static let ExtraLight : Font = .custom(getFont.ExtraLightType, size: 0)
    
    //MARK: - Medium
    static let Medium12 : Font = .custom(getFont.MediumType, size: getSize.Regular)
    static let Medium14 : Font = .custom(getFont.MediumType, size: getSize.Medium)
    static let Medium18 : Font = .custom(getFont.MediumType, size: getSize.Large)
    
        //MARK: - Bold
    static let Bold : Font = .custom(getFont.BoldType, size: 0)
    
    //MARK: - Semibold
    static let Semibold14 : Font = .custom(getFont.SemiBoldType, size: getSize.Medium)
    static let Semibold16 : Font = .custom(getFont.SemiBoldType, size: getSize.Middle)
    static let Semibold24 : Font = .custom(getFont.SemiBoldType, size: getSize.Title)

    
    static let ExtraBold : Font = .custom(getFont.ExtraBoldType, size: 0)
    static let Black18 : Font = .custom(getFont.BlackType, size: getSize.Large)
    
}
