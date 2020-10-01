# Packaging App

`Note: In order to packaging app make sure you already have androidjs-builder`

## Packaging App In Debug Mode
```sh
$ cd myfirstapp
$ androidjs build
```

## Packaging App In Release Mode
```sh
$ cd myfirstapp
$ androidjs build --release
```

`NOTE: It will generate apk file inside 'dist' folder`  
`NOTE: Resign your app with your own private keystore`

If this `build` command generates any error, try to `build` with `force command`

```sh
$ androidjs build -f
```