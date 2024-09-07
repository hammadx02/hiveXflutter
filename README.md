# hivexflutter

## About

**hivexflutter** 🗃️ is a Flutter project demonstrating how to perform Create, Read, Update, and Delete operations using the Hive database. Hive is a fast, lightweight NoSQL database ideal for Flutter apps. This project provides a straightforward guide to managing data with Hive.

## Features

- **Create** ✍️: Add new records
- **Read** 📖: Retrieve data
- **Update** 🔄: Modify existing records
- **Delete** ❌: Remove records

## Getting Started

1. **Add dependencies** in `pubspec.yaml`:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      hive: ^2.0.4
      hive_flutter: ^1.1.0
    dev_dependencies:
      hive_generator: ^1.1.1
      build_runner: ^2.1.1
    ```

2. **Install packages**:

    ```bash
    flutter pub get
    ```

3. **Initialize Hive** in your app:

    ```dart
    void main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Hive.initFlutter();
      runApp(MyApp());
    }
    ```

4. **Define your model** and use Hive:

    ```dart
    @HiveType(typeId: 0)
    class Person extends HiveObject {
      @HiveField(0)
      final String name;
      @HiveField(1)
      final int age;
      Person(this.name, this.age);
    }
    ```

5. **Perform CRUD operations**:

    - **Create**: `box.add(Person('John Doe', 30));`
    - **Read**: `var person = box.getAt(0);`
    - **Update**: `person.age = 31; person.save();`
    - **Delete**: `box.deleteAt(0);`

## Contact

For questions, email me at [hammadaali02@gmail.com](mailto:hammadaali02@gmail.com).
