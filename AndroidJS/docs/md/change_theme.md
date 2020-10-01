# Theme

In order to apply theme in your app, you need to define `theme` attribute in `package.json` file of your app.

#### `Full Screen`
In order to full screen your app, you need to define `fullScreen` attribute inside the `theme` attribute in `package.json` file of your app.
- `fullScreen: true` to hide the status bar to make app full screen.
- `fullScreen: false` to show status bar

```json
{
  ...
  "theme": {
	"fullScreen": true
  }
  ...
}
```

#### `Change Colors`
In order to change the **colors** , you'll have to define following attributes inside `theme` attribute in `package.json` file of your app

```json
{
  ...
  "theme": {
	"fullScreen": false,
	"colorAccent": "#FF0000",
	"colorPrimary": "#00FF00",
	"colorPrimaryDark": "#FFFFFF"
  }
  ...
}
```
`Note: change the colors according to you`