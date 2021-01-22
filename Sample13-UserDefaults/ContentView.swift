//
//  ContentView.swift
//  Sample13-UserDefaults
//
//  Created by keiji yamaki on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    @State private var string = ""
    @State private var float = ""
    @State private var int = ""
    
    var body: some View {
        VStack {
            Text("保存するデータ")
                .padding()
            TextField("文字を入力して下さい", text:$string)
                .padding()
            TextField("小数を入力して下さい", text: $float)
                .keyboardType(.decimalPad)
                .padding()
            TextField("整数を入力して下さい", text: $int)
                .keyboardType(.numberPad)
                .padding()
            HStack {
                Spacer()
                Button(action: {
                    Setting.string = string
                    Setting.float = Float(float)!
                    Setting.int = Int(int)!
                    Setting.save()
                }) { Text("保存") }
                Spacer()
                Button(action: {
                    Setting.read()
                    string = Setting.string
                    float = String(Setting.float)
                    int = String(Setting.int)
                }) { Text("読み込み") }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
