//
//  JournalEntryDetailView.swift
//  DayJournal
//
//  Created by Henry Calderon on 7/8/24.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                }
//                .frame(maxWidth:.infinity, alignment: .leading)
                .padding(.bottom)
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
//        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        JournalEntryDetailView(detailJournalEntry:
                                JournalEntry(title: "A Great Gold Day",
                                             text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vulputate a ipsum ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean in ipsum quis ipsum ultrices imperdiet a quis turpis. Integer magna mauris, vulputate quis massa et, pulvinar tristique nisl. Curabitur mattis elit eget orci feugiat, sit amet pellentesque mi viverra. Pellentesque non magna ut metus elementum dignissim. Etiam at leo scelerisque nunc interdum tempor non in metus. Aenean vitae mi quis nisl condimentum pharetra. Donec at ultricies ligula. Nam et orci vitae purus auctor pretium. Quisque dictum gravida egestas. Donec ut sapien accumsan, faucibus elit a, facilisis augue. Nullam odio lacus, congue in dui at, posuere interdum dolor. Curabitur egestas ex vel arcu facilisis, sed blandit eros volutpat. Suspendisse at rutrum sapien, sed vulputate massa. Sed convallis enim tincidunt nisi porttitor facilisis.                                             Nullam laoreet sapien in diam dignissim congue finibus vitae erat. Integer molestie, est eget porta tincidunt, sem sem fringilla lectus, non imperdiet ligula dolor vitae nisl. Curabitur faucibus diam tellus, vitae gravida nunc imperdiet in. Phasellus dignissim, quam sit amet vestibulum tincidunt, libero est blandit est, eget convallis lorem odio et felis. Mauris sit amet metus eros. Donec euismod purus in aliquet feugiat. Cras sed neque ligula. Nulla volutpat velit vitae massa aliquet malesuada. Mauris porttitor dapibus libero in luctus.                                             Pellentesque et pellentesque orci, non mattis orci. Aenean volutpat felis vitae enim porta, vitae sodales erat sagittis. Cras ligula mauris, ullamcorper eget vehicula mollis, accumsan auctor urna. Integer non eros egestas, feugiat est ac, efficitur nunc. Maecenas porttitor mi id turpis dignissim pulvinar. Etiam sed risus nec diam luctus semper vitae finibus nulla. Duis commodo est eu lacus faucibus, vitae luctus ipsum pharetra. Sed eros felis, vestibulum a vestibulum vitae, euismod sed quam. Curabitur vitae ex eu ipsum sagittis euismod. Aliquam tincidunt commodo pretium. Nullam turpis tortor, porttitor ut pellentesque in, finibus id nisl. Nullam vitae urna eget sapien convallis venenatis et et tellus. Aliquam auctor egestas felis, at pretium eros sollicitudin non. Cras mattis ligula in eros ultrices placerat. Nulla lacinia viverra faucibus.                                             Vestibulum bibendum finibus varius. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque congue, mauris sit amet tempor pharetra, mauris urna ultrices nisi, sit amet lobortis diam ex sodales nunc. Donec et interdum dolor, eu vulputate lectus. Proin cursus facilisis aliquet. Sed quis laoreet ipsum. Aliquam efficitur, justo non auctor bibendum, diam diam dictum enim, vitae porttitor ante tellus ac leo. Sed nec sem quis metus facilisis laoreet quis ornare odio. Proin facilisis ac orci tincidunt elementum. Duis in cursus velit. Aenean hendrerit ornare nunc sit amet venenatis. Nullam volutpat aliquam nibh, vitae pellentesque quam sagittis nec. Donec bibendum pellentesque lacus vitae volutpat. Vivamus commodo turpis id lacus ullamcorper accumsan in nec velit. Etiam commodo urna consequat, laoreet nisi at, euismod turpis.                                             Curabitur in sapien ac tellus viverra faucibus eleifend a lacus. Phasellus maximus mattis mi. Etiam sagittis diam nisi, vulputate efficitur est vestibulum quis. Nunc eleifend augue non neque dignissim tristique. Aliquam scelerisque purus a elementum laoreet. Aliquam dictum tempor lorem, in bibendum nisl varius non. Donec augue quam, euismod et sem et, blandit bibendum purus. In at mi ullamcorper, semper dolor quis, fringilla tortor.                                             Etiam accumsan placerat eros, in tristique neque hendrerit dictum. Nulla ultricies arcu vel nisl dapibus, ut ultrices eros pellentesque. Vestibulum cursus imperdiet condimentum. Fusce sem ligula, sollicitudin venenatis scelerisque ut, ornare a risus. In sapien magna, congue ornare luctus id, semper quis sem. Vestibulum in auctor nisi. Aliquam erat volutpat.                                             Pellentesque tellus nibh, finibus non volutpat sed, facilisis vitae lorem. Donec id ante sit amet elit aliquam sodales egestas id magna. Phasellus tincidunt lectus non lectus tristique congue. Nam ut augue commodo, semper libero at, pulvinar nisi. Integer id eleifend mi. Ut interdum velit sit amet finibus feugiat. Donec vehicula libero in purus malesuada venenatis. Nam cursus bibendum luctus. Aenean sed mauris rutrum, tempus erat id, aliquet tortor. Morbi egestas auctor dignissim. Nunc venenatis nisi at risus fringilla, non lobortis erat imperdiet. Etiam eu nibh neque. Nunc vitae dui sapien. Ut sapien magna, convallis vitae vestibulum non, luctus et neque. Phasellus mattis quam enim, non molestie turpis faucibus eget. Nulla ultrices tincidunt dictum.",
                                             rating: 5, date: Date())
        )
    }
}
