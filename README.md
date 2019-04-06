
# react-native-rn-zalo

## Getting started

`$ npm install react-native-rn-zalo --save`

### Mostly automatic installation

`$ react-native link react-native-rn-zalo`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-rn-zalo` and add `RNRnZalo.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNRnZalo.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNRnZaloPackage;` to the imports at the top of the file
  - Add `new RNRnZaloPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-rn-zalo'
  	project(':react-native-rn-zalo').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-rn-zalo/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-rn-zalo')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNRnZalo.sln` in `node_modules/react-native-rn-zalo/windows/RNRnZalo.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Rn.Zalo.RNRnZalo;` to the usings at the top of the file
  - Add `new RNRnZaloPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNRnZalo from 'react-native-rn-zalo';

// TODO: What to do with the module?
RNRnZalo;
```
  