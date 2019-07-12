![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat&color=yellow)](http://mit-license.org)
[![Platform](http://img.shields.io/badge/platform-ios-lightgrey.svg?style=flat&color=black)](https://developer.apple.com/resources/)

![](https://github.com/nkopilovskii/SmartVIPER/blob/master/SmartVIPER_logo.png?raw=true)

# NKSmartViper Code Generator

The presented template and script are designed to generate a module on most popular architectures: MVC, MVP & VIPER.

The main idea of this solution is the possibility of using modules with different architectures, while not violating the principles of encapsulation and extensibility, to allow the developer to change the structure of individual modules without affecting the functionality of all the others.

The purpose of this solution:
- speed up the process of writing code by autogenerating the module's templates;
- create a single mechanism of communication between  modules;
- ensure compliance with SOLID principles.

##

## Architectures & Components

The solution suggests the use of the following module architectures:
- ***Model-View-Controller***;
- ***Model-View-Presenter***;
- ***VIPER***.

Solution offers the use of global entities and services (as elements of ***Service Oriented Architecture***).

This solution is based on the use of generics in order to reduce the preservation of the integral structure of the modules and avoid the redundant code in them.

![](https://github.com/nkopilovskii/SmartVIPER/blob/master/blockscheme.png?raw=true)

`Configurator`  is an abstract factory (creates objects of module levels and establishes dependencies between them) and the entry point to the module.

##

`View` displays UI. `View` appeals to the `Presenter` through the `Presentation` protocol.

##

`Presenter` organizes communication between all levels of the module. 
- `Presenter` appeals to `View` through the `Viewable` protocol. 
- `Presenter` appeals to `Interactor` through the `UseCase` protocol.
- `Presenter` appeals to `Router` through the `Wireframe` protocol.

##

`Interactor` implements the business logic of the module, interacts with services (DB, Network, etc.). `Interactor` appeals to `Presenter` through the `InteractorOutput` protocol.

##

`Router` implements the transition from this module to another module.

##

## How to use

1. Copy **`NKSmartVIPER`** folder to your project. 

2. Run **`NKSmartViperCodeGen`**. 

***Important!** Make sure the "Module" folder with the template files is in the same folder.*

3. Enter the target path for the created module.

4. Select module architecture.

5. Enter name of the created module.

6. After successful generation of the module files at the specified path, add them to the project.

##

## Example

Dowload folder with example project to get acquainted with the principles of module initialization.

##

## Version history

### v.1.0

### v.2.0
- Added MVC & MVP architecture templates and configurations
- Developed a general mechanism for modules' configuring 
- `Localizer` removed and presented to  [individual module](https://github.com/nkopilovskii/NKLocalizerTemplate)

##

## Author

nkopilovskii, nkopilovskii@gmail.com

##

## License

NKLocalizerTemplate is available under the MIT license. See the LICENSE file for more info.

##
