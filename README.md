# UIKit-SwitUI-Project

## **Integrating SwiftUI in UIKit**

This is a simple project of introduction to UIKit integrating SwiftUI. I've created an address book with the UIKit framework, in each section of the TabBar there is a container connected to a SwiftUIView.


## How the main storyboard is organized

First I created a TabViewController connected to two ViewController : RecentsViewController and ContactsViewController.

![Schermata 2022-04-06 alle 15.58.08.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/9794dcd7-a605-47e0-952d-46a0f2da8c37/Schermata_2022-04-06_alle_15.58.08.png)

In both ViewController I added a container to which I connected a UIHostingController. For each of these I added a link to a SwiftUIView in its own controller, respectively: RecentsSwiftUIView in RecentsViewController and ContactsSwiftUIView in ContactsViewController.

![Schermata 2022-04-06 alle 15.58.58.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/8e836d89-ef40-4178-9072-576a0155535e/Schermata_2022-04-06_alle_15.58.58.png)

To make these connections for each ViewController I called the Assistant and used @IBSegueAction, in UIKit a segue is an object that defines a transition between two view controllers in a storyboard file.

![Schermata 2022-04-06 alle 17.40.09.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/ff404176-7584-49bf-9c3c-14d5c699d251/Schermata_2022-04-06_alle_17.40.09.png)

![Schermata 2022-04-06 alle 17.40.16.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/06a092bc-aed4-4a62-93cd-c53d2c44c951/Schermata_2022-04-06_alle_17.40.16.png)

In the TabViewController I added a button to add a new contact, this button links to a modal created in the storyboard.

![Schermata 2022-04-06 alle 16.00.11.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/3daaea02-1d6d-4161-ab9f-cbc834d48fab/Schermata_2022-04-06_alle_16.00.11.png)

## How it works

[Simulator Screen Recording - iPhone 11 - 2022-04-01 at 17.14.11.mp4](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/2bfbe5b2-eb59-47eb-abd7-b269afe8bb00/Simulator_Screen_Recording_-_iPhone_11_-_2022-04-01_at_17.14.11.mp4)


