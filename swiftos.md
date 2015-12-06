slidenumbers: true

# Open Source Swift 🎉
![](img/swiftbg.png)

---

![](img/craig_swift.jpg)

^ Juni 2014

---

![](img/craig_opensource.jpg)

^ Juni 2015

---

#🙄

---

![](img/craig_opensource_linux.jpg)

---

#😳

---

![](img/swiftlang_tweet.png)

---

##[swift.org](https://swift.org)

---

![fit](img/swift.org.png)

---

- **A bug reporting and tracking system**
- **Mailing lists**
- **A blog dedicated to the engineering of Swift**
- **Community guidelines**
- **Getting started tutorials**
- **Contributing instructions**
- **Documentation on Swift**
- **Developer and API design guidelines**

![fit](img/swift.org.png)

---

![fit](img/opensource.apple.com.png)

^ Was Apple auch hätte machen können...

---

### So Open Source wie nur möglich!

---

![fit](img/github.com_apple.png)

---

![fit](img/github.com_apple_swift.png)

^ Inklusive der kompletten Commithistory! Wenn auch leicht nachbearbeitet 😜
<!-- https://vimeo.com/147777653 -->

---

## Apache 2.0 License

^ Frei verwendbar, modifizierbar und verteilbar
^ Bleibt bei Veränderungen unter der Lizenz
^ Änderungen müssen nicht zurückgeschickt werden
^ Software, die darauf aufbaut, muss nicht Apache 2.0 lizenziert sein

---

## [bugs.swift.org](https://bugs.swift.org)

---

### PRs werden bereits akzeptiert 🎉✨

---

## Stdlib?

---

### [SwiftDoc.org](http://swiftdoc.org)

---

## Foundation!

---

![fit](img/github.com_apple_foundation.png)

---

## Swift Evolution

---

![fit](img/github.com_apple_evolution.png)

---

###[swift-evolution@swift.org](https://lists.swift.org/mailman/listinfo/swift-evolution)

![fit](img/github.com_apple_evolution.png)

---

- Remove the `++` and `--` operators
- Removing `var` from Function Parameters and Pattern Matching
- (Remove C-style for-loops with conditions and incrementers)

---

## Swift Package Manager

---

### Package.swift

^ ähnlich der Podfile, Cartfile, package.json, Gemfile

---

### example-package-dealer

```swift
import PackageDescription

let package = Package(
    name: "Dealer",
    dependencies: [
        .Package(url: "https://github.com/apple/example-package-deckofplayingcards.git", majorVersion: 1),
    ]
)
```

---

### `> swift build`
### `> .build/debug/Dealer`

---

### SPM & Cocoapods & Carthage?

---

![](img/alloy_tweet.png)

---



<!--
TODO:
 - Teile von swift.org highlighten, gerade so Dinge wie die API Guidelines, großartig :D
 - Eigenes Beispiel mit SPM bauen und wenn richtig awesome isses ein server der auf dokku deployed wird \o/

-->

<!--
Weitere Links:
 - https://news.ycombinator.com/item?id=10669891
 - http://arstechnica.com/apple/2015/12/craig-federighi-talks-open-source-swift-and-whats-coming-in-version-3-0/
 -->
