# Maybach
Maybach is a toolbox written in Swift. This is alpha version, some feature's can be not available yet.

<p>
<a href="https://codecov.io/gh/martin-przystalka/Maybach"><img src="https://codecov.io/gh/martin-przystalka/Maybach/branch/master/graph/badge.svg" /></a>
<a href="https://codeclimate.com/github/martin-przystalka/Maybach/maintainability"><img src="https://api.codeclimate.com/v1/badges/46dadcf02d64660c82a1/maintainability" /></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" /></a>
<a href="https://travis-ci.org/martin-przystalka/Maybach"><img src="https://travis-ci.com/martin-przystalka/Maybach.svg?branch=master" /></a>
<a href="https://github.com/Carthage/Carthage"><img src="https://img.shields.io/badge/Carthage-compatible-brightgreen.svg" /></a>
<a href="https://github.com/martin-przystalka/Maybach/releases"><img src="https://img.shields.io/github/release/martin-przystalka/Maybach.svg" /></a>
<a href="https://martin-przystalka.github.io/Maybach/"><img src="https://img.shields.io/badge/Documentation-%F0%9F%91%8D-blue.svg" /></a>
</p>

## Introduction
Maybach has been created in come for my personal requirements. Creating many new project gave me point of look to my behaviours. I just have been copying same code, same classes/extension to new projects and then I realise that this is a time to create framework - Maybach!

## Features

- [view from xib](#view-from-xib)
- [adjust color](#adjust-color)
- [hex color](#hex-color)
- [substring](#substring)
- [string. Is number?](#string-is-number)
- [background thread](#background-thread)
- [logging](#logging)
- [and more](#and-more)

#### view from xib
Fast initializing view from xib. Just pass your view class to `get`, that's all. Remember to have same xib name as class name:

```swift
let viewFromXIB = UINib.get(ExampleView.self) // constant viewFromXIB is type of ExampleView.
```

#### adjust color
Change color using `lighter` or `darker` function, just pass desired percentage or leave default value.

```swift
let color = UIColor.blue
let lighterColor = color.lighter(by: 0.20)
let defaultLighterColor = color.lighter() //making color lighter by 40%
```

#### hex color
Get color from hex using UIColor constructor. If you forget # sign, it is not a problem, this case is supported.

```swift
let hexColor = UIColor(hex: "#000000")
let hexColorWithOutHash = UIColor(hex: "000000")
```

#### substring
Easy way to get substring without need to play with `String.Index`.

```swift
let exampleText = "This is example foo text."
let substring = exampleText.substring(from: 0, to: 3)
let substringTwo = exampleText.substring(from: 8, to: 14)

print(substring)      // This
print(substringTwo)   // example
```

#### string. Is number?
Elegant check for string.

```swift
let numberString = "-1212443.242325"
print(numberString.isNumber) // true
print("0".isNumber) // true
```

#### background thread
Human friendly syntax for accessing async background thread.

```swift
DispatchQueue.background {
    ...
}
```
You can also pass delay.
```swift
DispatchQueue.background(delay: 0.2) { // delay in seconds, block will be executed after 200 milliseconds.
    ...
}
```

#### logging
`log` is a wrapper around print(). This type of logging force developers to keep one convention of printing and make application more readable.

```swift
log(.info, self, #function, #line, "This is Example message.")
log(.error, self, #function, #line)
```

#### and more
Visit documentation site to read more about Maybach https://martin-przystalka.github.io/Maybach/

## Installation

### CocoaPods

CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. Go to project package using terminal and install using command:

`gem install cocoapods`

Next you will have to specify Maybach in your podfile:

```
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target '<Your Target Name>' do
pod 'Maybach', :git => 'git@github.com:martin-przystalka/Maybach.git', :tag => '0.01.1'

end
```

You are almost done, now let cocoapods do thier job, run:

`pod install`


### Carthage

Carthage is intended to be the simplest way to add frameworks to your Cocoa application.

Carthage builds your dependencies and provides you with binary frameworks, but you retain full control over your project structure and setup. Carthage does not automatically modify your project files or your build settings. [More about Carthage](https://github.com/Carthage/Carthage).

Once you are setup with Carthage, simply just add line below to your `Cartfile`.

`github "martin-przystalka/Maybach"`

### Manually

If you dont want to use any dependency management tool, you can do it manually via git submodule.

[More about manual integration](https://www.raywenderlich.com/155150/dependency-management-using-git-submodules).

## Contributing
I hope you enjoy Maybach! If so it would be great to have another pair of hands to improve this project.
How can you do it? Here you have some types:
* Suggest new features.
* Improve documentation.
* Checking pull requests.
* Making pull request.
* Help with resloving issues.
* Reporting bugs by making issue on github.

## License
This project is released under the [MIT license](https://github.com/martin-przystalka/Maybach/blob/master/LICENSE).
