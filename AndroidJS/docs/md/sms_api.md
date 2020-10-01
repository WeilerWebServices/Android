# SMS API
`app.sms` is the instance of `SMS API`, which provide function to `send sms` from your app.
to use this `API` you need to this permission in your `package.json` file

```text
android.permission.SEND_SMS
```

A working example of `SMS API`
```js
app.sms.send("123457890", "Hello this is from Android JS");
```

### Methods

#### `app.sms.send(number, message)`
- `number` String
- `message` String

An example of above code:
```js
app.sms.send("123457890", "Hello this is from Android JS");
```