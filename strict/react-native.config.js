const path = require('path');

module.exports = {
  dependency: {
    platforms: {
      ios: { podspecPath: path.join(__dirname, 'react-native-appsflyer-strict.podspec') },
      android: {
        packageImportPath: 'import com.appsflyer.reactnative.RNAppsFlyerPackage;',
        packageInstance: 'new RNAppsFlyerPackage()',
      },
    },
  },
};
