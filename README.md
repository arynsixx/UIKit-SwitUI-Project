# UIKit-SwitUI-Project

## **Integrating SwiftUI in UIKit**

This is a simple project of introduction to UIKit integrating SwiftUI. I've created an address book with the UIKit framework, in each section of the TabBar there is a container connected to a SwiftUIView.


## How the main storyboard is organized

First I created a TabViewController connected to two ViewController : RecentsViewController and ContactsViewController.

<img width="737" alt="Schermata 2022-04-06 alle 15 58 08" src="https://user-images.githubusercontent.com/94188485/162016694-933168a0-b466-4b67-8ae1-ed225a57f004.png">



In both ViewController I added a container to which I connected a UIHostingController. For each of these I added a link to a SwiftUIView in its own controller, respectively: RecentsSwiftUIView in RecentsViewController and ContactsSwiftUIView in ContactsViewController.

<img width="737" alt="Schermata 2022-04-06 alle 15 58 58" src="https://user-images.githubusercontent.com/94188485/162016717-6d419192-fecf-4246-acfc-edf0b841d198.png">


To make these connections for each ViewController I called the Assistant and used @IBSegueAction, in UIKit a segue is an object that defines a transition between two view controllers in a storyboard file.

<img width="885" alt="Schermata 2022-04-06 alle 17 40 09" src="https://user-images.githubusercontent.com/94188485/162016996-73b4e755-5cc7-4d8e-a6bc-d83a34a2e605.png">



<img width="885" alt="Schermata 2022-04-06 alle 17 40 16" src="https://user-images.githubusercontent.com/94188485/162017093-5020a381-7988-4573-8e54-40318b3bc18a.png">



In the TabViewController I added a button to add a new contact, this button links to a modal created in the storyboard.

<img width="737" alt="Schermata 2022-04-06 alle 16 00 11" src="https://user-images.githubusercontent.com/94188485/162016751-3ff7e284-bc98-40ef-a41a-442781d040e6.png">


## How it works

https://user-images.githubusercontent.com/94188485/162016560-79665f15-1ec9-4028-918c-2ab475c17703.mp4





