
![](https://github.com/nkopilovskii/SmartViper/SmartVIPER_
logo.png)

# NKSmartViper Code Generator
The presented template and script are designed to generate a module on the viper architecture using the auxiliary service of localization of string data.

## VIPER architecture
Module architecture is one of the variations of Clean Architecture with elements of the Service Oriented Architecture.

![](https://github.com/nkopilovskii/SmartViper/blockscheme.png)

`Configurator`  is an abstract factory (creates objects of module levels and establishes dependencies between them) and the entry point to the module.

`View` displays UI. `View` appeals to the `Presenter` through the `Presentable` protocol.

`Presenter` organizes communication between all levels of the module. 
- `Presenter` appeals to `View` through the `Viewable` protocol. 
- `Presenter` appeals to `Interactor` through the `UseCase` protocol.
- `Presenter` appeals to `Router` through the `Wireframe` protocol.

`Interactor` implements the business logic of the module, interacts with services (DB, Network, etc.). `Interactor` appeals to `Presenter` through the `InteractorOutput` protocol.

`Router` implements the transition from this module to another module.

`Localizator` is an auxiliary service that implements a convenient mechanism for working with localized module string resources.

## How to use

## Example

