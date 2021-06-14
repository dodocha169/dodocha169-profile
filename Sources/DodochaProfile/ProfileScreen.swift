//
//  profileScreen.swift
//  DodochaProfile
//
//  Created by dodocha169 on 2021/05/10.
//

import Foundation
import TokamakStaticHTML
import TailwindSwift
import Closswift
import TokamakHTMLFunctionBuilder
import TokamakDOM
import TokamakCore

extension TailwindStyle: ClosswiftCombinable {
    
    public var clossValue: Array<String> {
        [tailwindValue]
    }
}

struct HeaderView: View {
    
    @State var color: Tailwind.BackgroundColor = .blue(.n200)
    
    var style: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(),
            sizing: .init(width: .full, height: .n(40)),
            spacing: .init(),
            background: .init(backgroundColor: color))
    }
    
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style, "flex")]) {
            html("img",
                 attributes: [
                    "src":"https://res.cloudinary.com/pando-life/image/upload/f_auto,b_rgb:E9E9E9,c_limit,w_1260,h_780,q_auto:good/article/main/2jh6rj0kc7jdxymf1591479098.jpg",
                    "class": closs(headerLogoStyle)
                 ] )
            html("div", attributes: ["class" :
                                        closs(style, "font-sans","text-6xl","pt-11")], content: "三種のチーズ牛丼特盛温玉乗せ")
        }
    }
}

let headerLogoStyle = TailwindStyle(
    spacing: .init(
        padding: [
            
        ],
        margin: [
            .left(40)
        ])
)

let rootViewStyle = TailwindStyle(
    flexbox: .init(direction: .col),
    boxAlignment: .init(
        justifyContent: .start,
        justifyItems: .stretch,
        justifySelf: .auto,
        alignContent: nil,
        alignItems: .stretch,
        alignSelf: nil),
    sizing: .init(width: .screen, height: .screen))

struct ContentView: View {
    var contentStyle: TailwindStyle {
        TailwindStyle.init(
            layout: .init(container: nil, boxDecorationBreak: nil, boxSizing: nil, display: nil, floats: nil, clear: nil, isolation: nil, objectFit: nil, objectPosition: nil, overflow: nil, overscrollbehavior: nil, position: nil, visibility: nil, zIndex: nil, layoutPosition: nil),
            flexbox: .init(
                direction: .col,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .enable,
                order: nil),
            boxAlignment: .init(justifyContent: nil, justifyItems: nil, justifySelf: nil, alignContent: nil, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .screen, height: .full),
            spacing: .init(margin: [.left(56),.top(-60)]),
            typography: .init(fontFamily: .sans, fontSize: .xl, fontStyle: .italic, fontSmoothing: nil, fontWeight: .bold, fontVariantNumeric: nil, textAlign: .left, textColor: .gray(.n900), textDecoration: .underline, textOpacity: .n(100), textOverflow: .overflowClip, textTransform: nil, verticalAlign: nil, whitespace: .normal, wordBreak: .words, letterSpacing: .normal, lineHeight: nil, listStyleType: nil, listStylePosition: .inside, placeholderColor: nil, placeholderOpacity: nil),
            background: .init(backgroundColor: .pink(.n100)))
    }
    
    var style: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .n(56), height: .full),
            spacing: .init(margin: [.left(4)]),
            background: .init(backgroundColor: .indigo(.n500)))
    }
    
    var imageStyle: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: nil,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(),
            sizing: .init(width: .full, height: .n(48)),
            spacing: .init(),
            transforms: .init(transform: .transform, transformOrigin: nil, scale: .number(150), rotate: .number(180), translate: nil, skew: .yNumber(12)))
        
    }
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style)]) {
            html("img",                attributes: [                    "src":"https://res.cloudinary.com/pando-life/image/upload/f_auto,b_rgb:E9E9E9,c_limit,w_1260,h_780,q_auto:good/article/main/2jh6rj0kc7jdxymf1591479098.jpg",
                                                                        "class": closs(imageStyle)])
            html("div", attributes: [:], content: "なんもしたくない プロフィールとかかきたい")
            html("div", attributes: ["class" :
                                        closs(contentStyle)]) {
                html("a",attributes: ["href":"https://www.sukiya.jp/menu/in/gyudon/102900/index.html","class": closs(contentStyle, "font-sans","m-8")], content: "みんな大好き！")
                html("a",attributes: ["href":"https://www.monsterenergy.com/jp/ja/products/monster-energy","class": closs(contentStyle, "font-sans","m-8")], content: "魔剤しか勝たん")
                html("a",attributes: [:],content: "改行ってどうやるの？")
            }
                                    }
    }
    
    
    
    
}
public struct HelloView: View {
    
    public var outlineStyle = TailwindStyle(
        sizing: .init(width: .screen, height: .screen),
        spacing: .init(padding: [.top(4), .left(4)]),
        background: .init(backgroundColor: .indigo(.n500)))
    
    
    public var body: some View {
        html("div", attributes: ["class" :closs(rootViewStyle, "overflow-auto", "h-screen")]) {
            HeaderView()
            ContentView()
            
        }
    }
}
