# WeDevs Flutter Skill Test

## Folder architecture
- 📁 **lib**: Contains the source code of the project.
    - 📁 **core**: Core functionality of the app.
    - 📁 **data**: Data layer.
        - 📁 **api**: Dokan api.
        - 📁 **local**: For data storing in local.
    - 📁 **models**: Data models used in the application.
    - 📁 **presentation**: Presentation layer.
        - 📁 **provider**: State management (used riverpod).
        - 📁 **ui**: User interface (UI).
            - 📁 **pages**: Main pages.
            - 📁 **components**: Reusable components.
            - 📁 **dialogs**: Common dialogs used in the app.
            - 📁 **painters**: Custom painters.
    - 📁 **utils**: Utility functions.
- 📁 **assets**: Assets used by the project.
- 📄 **README.md**: Project documentation and information.

## Apk
📦 **app-release.apk**   [(link)](https://drive.google.com/file/d/1avHv733R1OVEBWeYR1bxH1jJtsN8C4QI/view?usp=sharing)

## Getting Started

Make sure you have Flutter and Dart installed on your machine. If not, you can download and install them from the official Flutter website: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/carbonanik/assignment_flutter_developer_wedevs.git
    ```

2. Navigate to the project directory:

    ```bash
    cd your-flutter-app
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

## Running the App

1. Connect a device or start an emulator.

2. Run the app:

    ```bash
    flutter run
    ```

This command will build and run the app on your connected device or emulator.

## Additional Commands

- To build a release version of the app:

    ```bash
    flutter build apk
    ```
  
