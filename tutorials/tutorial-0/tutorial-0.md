# Tutorial 0: Intro to UIKit

Please leave feedback by creating a GitHub issue or by posting on Piazza.

Watch [this](https://www.youtube.com/watch?v=bZNAFkkUeKs&ab_channel=Devslopes) video for a basic demonstration of how to build an app like this. Remember -- Stack Overflow and Google are strongly encouraged as well. If you can't get this tutorial working after 30 minutes, quit. You will be graded on submitting something, not whether it's working or not. At the very least, spend a few minutes playing around with XCode.  

Deadline: Friday, September 11th, 1:20 PM 

<img src="https://github.com/jerry1ye10/cis-195-f20/blob/master/tutorials/tutorial-0/assets/pic1.png" width="300" height="500"/> <img src="https://github.com/jerry1ye10/cis-195-f20/blob/master/tutorials/tutorial-0/assets/pic2.png" width="300" height="500"/>




## Step 0: Create a new project
* Open Xcode
* Select "new project" from the start screen, or use File > New > Project in the menu bar
* Select "Single View Application"
* Name the project "app0_lastname_firstname"
* Make sure you select storyboard as the User Interface 
## Step 1: Build the storyboard 
* Go to the storyboard
* Drag a `UIButton` and a `UILabel` into your view
## Step 2: Add the logic
* Connect both your button and your label to your designated view controller 
* Make your button change the `text` of the label whenever it's clicked. To change the text of the button run something like this: `button.setTitle("Turn Blue", for:.normal)`
