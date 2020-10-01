# Mobile Data API
`app.mobiledata` is an instance of `Mobile Data API`, which provide functions to access `Mobile Data` from your app.

A working example of `Mobile Data API`
```js
const status = app.mobiledata.isEnabled();
console.log("Mobile Data status: ", status);
```

### Methods

#### `app.mobiledata.isEnabled()`
Returns `true` if `Mobile Data` is `enable` otherwise `false`.

An example of above code:
```js
console.log(app.mobiledata.isEnabled());
```
