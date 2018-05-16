# Maybach (WORK IN PROGRESS)
Maybach is a toolbox written in Swift.

<p>
  
<a href="https://codeclimate.com/github/martin-przystalka/Maybach/test_coverage"><img src="https://api.codeclimate.com/v1/badges/46dadcf02d64660c82a1/test_coverage" /></a>
<a href="https://codeclimate.com/github/martin-przystalka/Maybach/maintainability"><img src="https://api.codeclimate.com/v1/badges/46dadcf02d64660c82a1/maintainability" /></a>
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
<img src="https://travis-ci.com/martin-przystalka/Maybach.svg?branch=master" />
<img src="https://img.shields.io/badge/Carthage-compatible-brightgreen.svg" />
[![GitHub release](https://img.shields.io/github/release/martin-przystalka/Maybach.svg)](https://github.com/martin-przystalka/Maybach/releases)
<a href="https://martin-przystalka.github.io/Maybach/"><img src="https://img.shields.io/badge/Documentation-%F0%9F%91%8D-blue.svg" /></a>


</p>

## Introduction
Maybach has been created in come for my personal requirements. Creating many new project gave me point of look to my behaviours. I just have been copying same code, same classes/extension to new projects and then I realise that this is a time to create framework - Maybach!

## Features


[view from xib](#view-from-xib)


###### view from xib
Fast initializing view from xib. Just pass your view class to `get`, that's all. Remember to have same xib name as class name:

```swift
let viewFromXIB = UINib.get(ExampleView.self) // constant viewFromXIB is type of ExampleView.
```

## Installation

### CocoaPods

CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects. Go to project package using terminal and install using command:

`gem install cocoapods`

Next you will have to specify Maybach in your podfile:

```
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target '<Your Target Name>' do
    pod 'Maybach', '~> v1.0.0'
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
