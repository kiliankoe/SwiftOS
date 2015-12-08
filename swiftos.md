slidenumbers: true

# Open Source Swift 🎉
![](img/swiftbg.png)

---

![](img/craig_swift.jpg)

^ Juni 2014

---

![original](img/craig_opensource.jpg)

^ Juni 2015

---

![original](img/craig_opensource.jpg)

#🙄

^ Toll, aber naja... ObjC ist auch "open source", ist zwar nett, bringt aber nicht viel.

---

![original](img/craig_opensource_linux.jpg)

---

![original](img/craig_opensource_linux.jpg)

#😳

^ Oha! Und auch noch von Apple selbst? Nicht schlecht!

---

![](img/swiftlang_tweet.png)

^ It happened! 😳

---

##[swift.org](https://swift.org)

^ swift-lang.org war ja leider schon weg 😜

---

![fit](img/swift.org.png)

^ So schaut's aus

---

- bug reporting system (JIRA)
- mailing lists
- engineering blog
- community guidelines
- tutorials
- contributing instructions
- documentation on Swift
- developer and API design guidelines

![fit](img/swift.org.png)

---

![fit](img/opensource.apple.com.png)

^ Was Apple auch hätte machen können...

---

### So Open Source wie nur möglich!

^ Aber sie gehen hier einen anderen Weg

---

![fit](img/github.com_apple.png)

^ Erstens ist alles auf GitHub!

---

![fit](img/github.com_apple_swift.png)

^ Inklusive der kompletten Commithistory! Wenn auch leicht nachbearbeitet 😜
gource: https://vimeo.com/147777653

---

## Apache 2.0 License

^ Frei verwendbar, modifizierbar und verteilbar

^ Bleibt bei Veränderungen unter der Lizenz

^ Änderungen müssen nicht zurückgeschickt werden

^ Software, die darauf aufbaut, muss nicht Apache 2.0 lizenziert sein

---

## [bugs.swift.org](https://bugs.swift.org)

^ Ein öffentlicher Issuetracker! Ein JIRA ist's.

^ bugreporter.apple.com oder hier?

---

### PRs werden bereits akzeptiert 🎉✨

^ Jetzt liegt es daran, was die Community daraus macht 😊 99% aktuell Typo-Fixes.. 😄
Aber hey, alles was Dinge verbessert, ist eine wertvolle contribution 😊

---

![fit](img/lattner_tweet.png)

---

## Stdlib?

^ Stdlib war von Apple versprochen. Aber was heißt das?
Swift ist nichts ohne Stdlib... String, Int, Array, Dictionary, etc.

^ swiftdoc.org von @mattt

---

## Foundation!

^ Aber Apple portet Foundation! Komplett in Swift ohne ObjC!

---

![fit](img/github.com_apple_foundation.png)

^ Auch das ist alles auf GitHub!

^ Etliches davon wirft noch NSUnimplented(), aber auch hier kann man contributen 😊

---

> We will also drop the 'NS' prefix from all Foundation classes.
-- https://github.com/apple/swift-corelibs-foundation

---

NSObject, NSEnumerator, NSSwiftRuntime, NSObjCRuntime, NSURL, NSURLSession, NSFormatter, NSDateFormatter, NSPropertyList, NSCoder, NSKeyedArchiver, NSJSONSerialization, NSOrderedSet, NSIndexSet, NSIndexPath, NSArray, NSDictionary, NSSet, NSCache, NSSortDescriptor, NSPort, NSPortMessage, NSRunLoop, NSStream, NSTimer, NSRegularExpression, NSScanner, NSTextCheckingResult, NSAttributedString, NSCharacterSet, NSString, NSCFString, NSRange, NSDecimal, NSDecimalNumber, NSGeometry, NSAffineTransform, ...

^ Endlich nicht mehr das hier

---

... NSNumber, NSValue, NSUserDefaults, NSLocale, NSFileHandle, NSFileManager, NSTask, NSBundle, NSProcessInfo, NSThread, NSOperation, NSLock, NSPathUtilities, NSCalendar, NSDate, NSTimeZone, NSNotification, NSNotificationQueue, NSNull, NSData, NSProgress, NSError, NSUUID, NSPersonNameComponents, FoundationErrors

Status: [Link](https://github.com/apple/swift-corelibs-foundation/blob/master/Docs/Status.md)

^ Und es geht noch weiter 😄

---

## Swift Evolution

^ Noch was: Swift Evolution oder wie geht's weiter mit der Sprache

---

![fit](img/github.com_apple_evolution.png)

^ Auch ein GitHub Repo mit Proposals

^ Einfach mal reinschauen, markdown Dokumente mit sauberen Beschreibungen und gut dokumentierten Anliegen

---

###[swift-evolution@swift.org](https://lists.swift.org/mailman/listinfo/swift-evolution)

![fit](img/github.com_apple_evolution.png)

^ Diskussion allerdings über die Mailingliste, hier bitte nicht direkt PRs aufmachen
Alternativ: low volume announcement mailing list

^ Weitere Swift Entwicklung bleibt auch offen!

---

- Remove the `++` and `--` operators
- Removing `var` from Function Parameters and Pattern Matching
- Remove C-style for-loops with conditions and incrementers

^ Drei ausgewählte bereits angenommene Proposals

---

## SE-0005: Better Translation of Objective-C APIs Into Swift

```swift
let contentString = listItemView.stringValue.stringByTrimmingCharactersInSet(
   NSCharacterSet.whitespaceAndNewlineCharacterSet())
```

--

```swift
let content = listItem.stringValue.trimming(.whitespaceAndNewlines)
```

---

## Swift Package Manager

^ Auch sehr unerwartet!

---

### @mxcl & @mattt

^ Max Howell -> Homebrew

^ Mattt Thompson -> NSHipster / AFNetworking, Alamofire

---

### Package.swift

^ manifest file ähnlich der Podfile, Cartfile, package.json, Gemfile

---

## apple/example-package-dealer

```swift
import PackageDescription

let package = Package(
    name: "Dealer",
    dependencies: [
        .Package(url: "https://github[...].git", majorVersion: 1),
    ]
)
```

^ die Version läuft über git tags

^ semver!

---

### `> swift build`
### `> .build/debug/Dealer`

---

## Sources

- kein Verzeichnis
- `Sources` Verzeichnis
- andere Unterverzeichnisse

^ Mehrere Möglichkeiten für die Source Dateien

---

## kein Verzeichnis

```
project/Package.swift
project/main.swift
project/foobar.swift
```

`swift build` baut ein `project` Modul

---

## *Sources* Verzeichnis

```
project/Package.swift
project/Sources/main.swift
project/Sources/foobar.swift
```

`swift build` baut ein `project` Modul

`Sources` kann auch `Source`, `srcs` oder `src` heißen

^ Mehrere Sources Verzeichnisse sind nicht erlaubt

^ Unterverzeichnisse in Sources sind möglich, werden als einzelne Module gebaut

---

## einzelne Unterverzeichnisse

```
project/Package.swift
project/mod1/main.swift
project/mod2/foo.swift
```

`swift build` baut zwei Module, `mod1` und `mod2`

---

## main.swift

Falls vorhanden baut SPM eine ausführbare executable, andernfalls eine Library.

---

### SPM & Cocoapods & Carthage?

---

![](img/alloy_tweet.png)

---

# Erste *Linux-ready* Projekte

- [kylef/Curassow](https://github.com/kylef/Curassow) - HTTP Server
- [sharplet/Regex](https://github.com/sharplet/Regex) - Regex µframework
- [Anviking/Decodable](https://github.com/Anviking/Decodable) - JSON framework
- [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) - JSON framework
- [kylef/Commander](https://github.com/kylef/Commander) - CLI framework
- [kylef/Stencil](https://github.com/kylef/Stencil) - templating framework

---

#[IBM Swift Sandbox](http://swiftlang.ng.bluemix.net/#/repl)

![inline](img/ibm_swift_sandbox_ipad.jpg)

^ Ähnliches gab's vorher schon, aber hier läuft Swift 2.2.
Siehe swiftstub.com, runswiftlang.com

^ Alle coolen Sprachen haben sowas 😀 siehe play.golang.org

---

TODO: Hier noch eigenes Codebeispiel einbauen?

---

# Weitere Links

- [Diskussion auf HN](https://news.ycombinator.com/item?id=10669891)
- [Craig Federighi Ars Technica Interview](http://arstechnica.com/apple/2015/12/craig-federighi-talks-open-source-swift-and-whats-coming-in-version-3-0/)
- [SPM Community Proposal](https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageManagerCommunityProposal.md)

^ Zum Nachlesen über die Links der PDF

---

# API Design Guidelines

![inline](img/api_guidelines.png)

#:grin:

^ swift.org liest sich super, hier ein "Schmankerl" 😄

<!--
TODO:
 - Eigenes Beispiel mit SPM bauen und wenn richtig awesome isses ein server der auf dokku deployed wird \o/

-->

<!--
Weitere Links:
 - https://realm.io/news/swift-opensource/
 -->
