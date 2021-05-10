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

extension TailwindStyle: ClosswiftCombinable {

    public var clossValue: Array<String> {
        [tailwindValue]
    }
}

let rootViewStyle = TailwindStyle(
    flexbox: .init(direction: .col),
    boxAlignment: .init(
        justifyContent: nil,
        justifyItems: .stretch,
        justifySelf: nil,
        alignContent: nil,
        alignItems: nil,
        alignSelf: nil),
    sizing: .init(width: .screen, height: .screen),
    background: .init(color: .pink(.n500)))

public var headerStyle = TailwindStyle.init(
    flexbox: .init(
        direction: nil,
        wrap: nil,
        grow: nil,
        shrink: nil,
        flex: .auto,
        order: nil),
    boxAlignment: .init(),
    sizing: .init(width: .full, height: .n(40)),
    spacing: .init(),
    background: .init(color: .blue(.n400)))

public var contentStyle = TailwindStyle.init(
    flexbox: .init(
        direction: nil,
        wrap: nil,
        grow: .enable,
        shrink: nil,
        flex: .auto,
        order: nil),
    boxAlignment: .init(),
    sizing: .init(width: nil, height: .full),
    spacing: .init(),
    background: .init(color: .black))
public struct HelloView: View {
    
    public var outlineStyle = TailwindStyle(
        sizing: .init(width: .screen, height: .screen),
        spacing: .init(padding: [.top(4), .left(4)]),
        background: .init(color: .indigo(.n500)))
    

    public var body: some View {
        html("div", attributes: ["class" :closs(rootViewStyle, "flex-col")]) {
            html("div", attributes: ["class" :
                                        closs(headerStyle)])
            html("div", attributes: ["class" :
                                        closs(contentStyle)])
        }
    }
}
