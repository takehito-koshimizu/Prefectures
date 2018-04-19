//
//  Prefectures.swift
//  Prefectures
//
//  Created by Takehito Koshimizu on 2018/04/19.
//

import Foundation
import EnumUtilities

// MARK: - 
/// 都道府県の列挙
public enum Prefecture: CaseIterable, UnsafeConvertible {

    case hokkaido
    case aomori
    case iwate
    case miyagi
    case akita
    case yamagata
    case fukushima
    case ibaraki
    case tochigi
    case gunma
    case saitama
    case chiba
    case tokyo
    case kanagawa
    case niigata
    case toyama
    case ishikawa
    case fukui
    case yamanashi
    case nagano
    case gifu
    case shizuoka
    case aichi
    case mie
    case shiga
    case kyoto
    case osaka
    case hyogo
    case nara
    case wakayama
    case tottori
    case shimane
    case okayama
    case hiroshima
    case yamaguchi
    case tokushima
    case kagawa
    case ehime
    case kochi
    case fukuoka
    case saga
    case nagasaki
    case kumamoto
    case oita
    case miyazaki
    case kagoshima
    case okinawa
}

extension Prefecture: CustomStringConvertible {

    public var description: String {
        return String(format: "%02ld  %@", code, name)
    }
}

// MARK: -
extension Prefecture {

    /// Enum の case を一番上から一番下までを並べたリスト
    public static let allCases = [Prefecture](makeIterator())

    /// 都道府県コードで初期化
    public init?(code: Int) {
        self.init(PrefectureCode(rawValue: code))
    }

    /// 都道府県名で初期化
    public init?(name: String) {
        self.init(PrefectureName(rawValue: name))
    }

    /// 都道府県コード
    public var code: Int {
        return convert(as: PrefectureCode.self).rawValue
    }

    /// 都道府県名
    public var name: String {
        return convert(as: PrefectureName.self).rawValue
    }
}
