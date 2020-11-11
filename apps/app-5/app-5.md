# App 5: National Parks


Remember -- Stack Overflow and Google are strongly encouraged. Feel free to look at the  

**Expected Duration:** 2+ hours.

**Deadlines:** Friday, November 13th at **1:20pm**

- - - -

## Objectives
* Make your fifth app
* Make a non-ambiguous, fully-constrained UI
* Transition between multiple screens while passing data between them
* Create a UI that remains responsive while fetching data from a server
* Use Swift Package Manager
* Gain autonomy in making apps

This app will have less guided instruction than previous ones; the final app will have even less. This is intended to prepare you for making a final project all by yourself. It's still extremely similar to what we did in class, so it shouldn't be too challenging 

## Topics
* Segues
* NavigationController
* Kingfisher / SPM
* URLSession
* Codable
* Firebase

## User Story
In this app, we'll implement an app for viewing information about US National Parks. The controller will be initially empty, and will query the NPS API as soon as the view is loaded.

While the request is loading (NPS API is slow) you should present a "spinning" loading indicator.

Images should be loaded "asynchronously". They will pop in as they are loaded.

Tapping on a cell brings the user to another screen, which contains a large version of the same photo (same url) as well as more information about the park.

![](/apps/app-5/assets/fig2.png?raw=true)

## Getting Started
* Create an Xcode project named "NationalParks". You should use Storyboards, not SwiftUI
* Visit the [NPS website](https://www.nps.gov/subjects/developer/get-started.htm) to obtain an API key
    - You'll get an email containing your key
* Feel free to use the [Github Repo project](https://github.com/DominicHolmes/cis-195-s20/tree/master/live-demos/github-trending-repos.zip) I made in class to guide your implementation

## Technical Requirements
You can complete these requirements roughly in order.
* An API request is performed to get a list of **30** national parks
    - Use URLSession.dataTask
    - Use the [API documentation](https://www.nps.gov/subjects/developer/api-documentation.htm) to figure out what endpoint to use
        + Make sure to use your API key in the url
        + Test your url in a browser to see the response format
* Codable structs decode the API response
    - Write down what fields you'll need to decode
    - Use a json viewing extension in Chrome/Safari to understand the response structure
    - Hint: you'll have 3 Codable structs total. The deepest one should keep track of the image url
* A table view displays your list of parks
    - Each table view cell should contain an image, the park name, the park designation, and a disclosure indicator
    - You'll have to create a custom dynamic cell in Storyboard
    - Initially the table view should be empty
* The table view is embedded within a navigation controller
    - When a cell is tapped, a show segue is performed to the detail screen
    - See the hint screenshot below
* The table view uses a `UIRefreshControl` to denote state
    - Pulling down on the table view makes another API request and refreshes the table
    - The refresh control should be spinning whenever the app is waiting on an API request
    - [This is easier than it sounds](https://developer.apple.com/documentation/uikit/uirefreshcontrol)
* A detail screen contains more information about the park
    - This includes a larger photo (same url), the name, the designation, and a description
    - Use a non-editable `UITextView` for the description
* All images are set (and automatically cached) using [Kingfisher](https://github.com/onevcat/Kingfisher), which should be installed using [Swift Package Manager](https://github.com/onevcat/Kingfisher/wiki/Installation-Guide#swift-package-manager).
    - You should see the images load faster on subsequent app launches
* No UI updates are performed on a background thread
* The layout and look of the app roughly matches the screenshots.

Hint: your UI structure will look something like this:

![](/apps/app-5/assets/fig3.png?raw=true)

## Part Two
- Write all of the API data into a firebase database 
- Comment out all of your code that makes the API call and instead read the data from your firebase database 

