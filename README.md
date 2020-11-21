# RJFirebase
RJFirebase is a framework to easily setup and reusable

#### Installation
RJFirebase is available through CocoaPods. To install it, simply add the following line to your Podfile:
* Add →  pod 'RJFirebase'
* Run →  pod install
* Drag GoogleService-Info.plist file that you just downloaded into the root of your Xcode project and add it to all targets.

#### Example
* Setup RJFirebase in AppDelegate
  ```
  RJFirebase.shared.setup()
  ```
  
* Set data to ViewController/TableViewCell/CollectionViewCell

```
  let messageValue = RJFirebase.shared.getString(ofKey: .message)
  messageLabel.text = messageValue
```
#keepCoding #justShare #usefulFad #swift
