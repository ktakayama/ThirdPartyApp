# Third Party App Simulator

This is an app to simulate behavior when integrating with a Third Party App.

To get started, assign your desired value to `URL_SCHEMES` in `setup.rb` and execute as follows:

```sh
ruby setup.rb
```

After running this script, build the app. It will then be set to launch with the specified URL scheme.

For iOS, you can test it from the shell as follows:

```sh
xcrun simctl openurl booted "something://"
```


----


Third Party Appとの連携をする際に動作をシミュレートするためのアプリです

setup.rbのURL_SCHEMESに好きな値を設定して以下のように実行します。

```sh
ruby setup.rb
```

これでビルドすると、指定したURLスキームでアプリが起動するようになります。

iOSの場合はシェルから以下のようにすると試せます。

```sh
xcrun simctl openurl booted "something://"
```

