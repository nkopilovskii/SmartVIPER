![](https://github.com/nkopilovskii/SmartVIPER/blob/master/SmartVIPER_logo.png?raw=true)

# NKSmartViper Code Generator
The presented template and script are designed to generate a module on the VIPER architecture using the auxiliary service of localization of string data.
##
## VIPER architecture
Module architecture is one of the variations of Clean Architecture with elements of the Service Oriented Architecture.

This solution is based on the use of generics in order to reduce the preservation of the integral structure of the modules and avoid the redundant code in them.

![](https://github.com/nkopilovskii/SmartVIPER/blob/master/blockscheme.png?raw=true)

`Configurator`  is an abstract factory (creates objects of module levels and establishes dependencies between them) and the entry point to the module.
##
`View` displays UI. `View` appeals to the `Presenter` through the `Presentable` protocol.
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
`Localizer` is an auxiliary service that implements a convenient mechanism for working with localized module string resources. 
- `Localizer` has no direct dependencies with any of the levels of the module and can be used by any of them.
- `Localizer` is also generated using a generic for automated access to localized resources.
##
## How to use
1. Copy files **`NKSmartViper.swift`** and **`Services.swift`** from **`NKSmartVIPER`** folder to your project. 
2. In **`Services.swift`** make updates in enum `NKSVLocalizer<C>.LanguageKey` by adding supported language identifiers. Raw value of each case must be equal to language identifiers supported by the project.
3. Run **`NKSmartViperCodeGen`**. **(Make sure the "Module" folder with the template files is in the same folder.)*
4. Enter the target path for the created module.
5. Enter name of the created module.
6. After successful generation of the module files at the specified path, add them to the project.
7. In file **`<ModuleName>/<ModuleName>Localizer.swift`** add update to enum `<ModuleName>Localizer.LocalizedKey` with cases raw values corresponding to localized keys in the file **`<ModuleName>/SupportFiles/<ModuleName>.strings`**
##
## Example
Dowload folder with example project to get acquainted with the principles of module initialization and work with localized resources.
