# Kanye Said: WebFetch in SwiftUI App Example

This is an example SwiftUI app that demonstrates how to use the [`WebFetch`](https://github.com/ishaanbedi/WebFetch) package to fetch data from an API and display it in a SwiftUI view.

## Installation

To use this example app, you can simply clone the repository and open the Xcode project. You may use a simulator or an iOS device to run the app.

## Usage

Once the app is running on a simulator or device, it will display a random quote by Kanye West fetched from the [Kanye REST API](http://api.kanye.rest). The app uses the [`WebFetch`](https://github.com/ishaanbedi/WebFetch) package to fetch the data from the API.

## Structure

The `generateAnotherQuote` function is called when the app loads or when the user taps the `"Another One"` button. It uses the [`WebFetch`](https://github.com/ishaanbedi/WebFetch) package to fetch data from API.

In the `generateAnotherQuote` function, the result of the `fetch` operation is passed to a closure that handles the success or failure of the operation. If the `fetch` operation is successful, the JSON object is parsed to extract the quote, which is then displayed in the app's view. If the `fetch` operation fails, an error message is printed to the console.

## Dependencies

The app depends on [`WebFetch`](https://github.com/ishaanbedi/WebFetch)

WebFetch package is already included in the project, so you don't need to install it separately. Though you may refer to the [`WebFetch`](https://github.com/ishaanbedi/WebFetch) repository for more information if you want to use it in other projects.

## Video Demo



https://user-images.githubusercontent.com/39641326/221343775-ee8f7358-c392-4f5a-916c-03c918904018.mov


## References

Kanye REST API: https://api.kanye.rest/ - The REST API used in this example app to fetch random quotes by Kanye West.

## License

WebFetch is released under the MIT license. See [LICENSE](LICENSE) for details.


