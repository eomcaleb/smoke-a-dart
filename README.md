# Smoke-a-Dart

Smoke-a-Dart is a tool for organizing and managing your files in Dart.

We've all been there. Using a path_provider in Dart can be quite tedious.
Thankfully, this wrapper class built on top of path provider will help make your development easier.

## How To
#### Read From File
To read from a local file, instantiate a SADFile with the file name.
The read() method returns avlue in async.
```
  SADFile file = SADFile(filename: "settings.json");
  String settings = "";
  
  Future<void> GetResources() async {
    await file.read().then((value) {
      setState(() {
        settings = value;
      });
    });
  }
```

#### Write To File
Deomonstration of how to save a text to a file.
```
  const setting = [ {"style": "darkmode"} ];
  SADFile file = SADFile(filename: "settings.json");
  file.write(jsonEncode(setting));
```

## Features
* Read from Local Storage
* Write to Local Storage

## Requirements
* path_provider: ^2.0.11

## Usage
Simply drop in this .dart file into your existing project directory for your development needs.

## Contributing
If you would like to contribute to the development of Smoke-a-Dart, please fork the repository and submit a pull request with your changes.

## License
Smoke-a-Dart is released under Apache License 2.0.
