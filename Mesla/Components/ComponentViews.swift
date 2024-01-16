
import SwiftUI

struct CustomNav: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("Hi Marvis")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Text("The Ultimate Tesla informations")
                    .foregroundColor(.gray)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
    }
}

struct ListView: View {
    var name:String 
    var price:String
    var image:String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4){
                Text("\(name)")
                    .font(.title3)
                    .fontWeight(.medium)
                Text("\(price)")
                    .font(.body)
                    .foregroundColor(.gray)
            }
            Spacer()
            HStack{
                AsyncImage(url: URL(string: "\(image)")){
                    image in image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .cornerRadius(8)
                } placeholder: {
                    ProgressView()
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(name: "", price: "", image: "")
    }
}

