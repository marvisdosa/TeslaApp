import SwiftUI

struct SettingScreen: View {
    var body: some View {
        VStack(spacing: 4){
            Image(systemName: "flag.2.crossed")
                .font(.title)
            Text("Coming Soon")
                .foregroundColor(.gray)
        }
    }
}

struct SettingScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingScreen()
    }
}
