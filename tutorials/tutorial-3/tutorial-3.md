# Tutorial 3: Segues

Please leave feedback by creating a GitHub issue or by posting on Piazza.

**Expected Duration:** <1 hour


- - - -

## Objectives
* Get comfortable with creating multi-screen apps.
---

## An Introduction to Segues
Let’s kick off this tutorial with a brief explanation of what segues are, and how they work in iOS.

Watch [this video](https://www.youtube.com/watch?v=5B5IRK9wYjI&index=8&list=PLPA-ayBrweUzGFmkT_W65z64MoGnKRZMq) from 15:38 to 25:00 for understanding segues. Continue the video for an implementation example (2x recommended).
 
## Types and Use Cases of Basic Segues
Now that we have an idea of what segues are, let’s look at the types of segues that exist in XCode, and when are possible uses cases of each one.

Read [this blog post](https://www.journaldev.com/10602/ios-navigation-controller-and-segues) (and keep it handy).

## Navigation Controllers
The UINavigationController is one of the most important classes in UIKit, used in almost every app. Its a very common way of navigating between different scenes in an app. It is used when you want to present different scenes, and pass data between those views in a sequential way. Let’s start by reading the Apple documentation, to understand what a Navigation Controller is, and what it can do.

Read: [Apple Developer Documentation on UINavigationController](https://developer.apple.com/documentation/uikit/uinavigationcontroller) up to State Preservation. Don't worry if you don't understand all the concepts presented.

By now, you should have realized that you’ve interacted with Navigation Controllers in almost every app on your iPhone. Optionally, you can read through [this tutorial](https://guides.codepath.com/ios/Navigation-Controller-Quickstart#step-1-embed-root-view-controller-inside-a-navigation-controller) to see how navigation controllers are implemented in storyboards. That tutorial also includes the "programmatic" (non-storyboard) way to do this, feel free to ignore that section.

---

## Submission
* Create an app that contains two view controllers, such that clicking on a button in the initial view controller segues to the second view controller. Make use of a Navigation Controller to embed these two view controllers in a navigation stack. The optional tutorial above is useful if you have trouble with this.
* Push it to your tutorials folder on github


