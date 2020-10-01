# Location API
`app.location` is the instance of `Location API`, which provide function to get `latitude` and `longitude` of user's current location.
In order to use this `API` you need to these permissions in your `package.json` file

```text
android.permission.ACCESS_FINE_LOCATION
android.permission.ACCESS_COARSE_LOCATION
```

A working example of `Location API`
```js
app.location.get();
```

### Methods

#### `app.location.get()`
returns `JSON` object with attribute `latitude`,  `longitude` and `error`
`NOTE: returns error message if error = true`

An example of above code:
```js
app.location.get();
```