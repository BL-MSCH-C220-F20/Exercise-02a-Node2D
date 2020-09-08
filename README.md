# Exercise-02a-Node2D
Exercise for MSCH-C220, 8 September 2020

This exercise is the first time for you to get your feet wet with Godot. The purpose is to introduce you to the notions of 2D translation, rotation, and scale and for you to see how they operate in Godot. 

First, be sure you have downloaded and installed the appropriate version of [Godot 3.2.2](https://godotengine.org/download) for your computer. Most likely, you will want the 64-bit version (only install the 32-bit version if the 64-bit doesn't run). 

Godot is currently not code-signed on the Mac, so if you are running it on a Mac, the first time you run it, you will need to right-click on the application and Open (and then indicate that you want to open it). Subsequently, it should open normally.

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-02a-Node-2D. *Edit the LICENSE and replace BL-MSCH-C220-F20 with your full name.* Commit your changes.

Press the green "Code" button and select "Open in GitHub Desktop". Allow the browser to open (or install) GitHub Desktop. Once GitHub Desktop has loaded, you should see a window labeled "Clone a Repository" asking you for a Local Path on your computer where the project should be copied. Choose a location where you will keep the repositories for this class. Make sure the Local Path ends with "Exercise-02a-Node2D" and then press the "Clone" button. GitHub Desktop will now download a copy of the repository to the location you indicated.

Open Godot. In the Project Manager, tap the "Import" button. Tap "Browse" and navigate to the repository folder. Select the project.godot file and tap "Open".

You will now see a rudimentary game that will allow us to explore the transform properties of Node2D. In the middle of the viewport should be a Godot Icon named "Target". There is another one named "Player" (as a child of a node named "Node2D") that will follow your mouse. As you hover the Player over the Target, your score goes up, if you are no longer hovering over it, the score decays. There are a few other UI elements in the HUD node that you can ignore for now.

Play the game by using the Playtest buttons (the play button on the left will work). Watch what happens as you move the Player around the screen and interact with the Target.

This isn't a very interesting game, so let's see what we can do to make it a little more challenging.

The Transform properties of nodes in Godot are relative to their parent's position, rotation, and scale. The Player tracks your mouse because its parent has default values for those properties, but if we alter them, it will make it more difficult to keep the Player on the Target.

Open the Node2D script by tapping the script icon next to the Node2D node in the Scene panel. You should see some GDScript code there, including three stubbed-out functions: translating, rotating, and scaling.

First, let's look at the translating function. Replace it with the following:
```
func translating(px,py,amount):
  position.x = sin(px)*amount
  position.y = sin(py)*amount
```
Godot is particular about whitespace, so make sure the second and third lines of the function are indented with a single tab.

Also, in the `_physics_process(delta):` function, add this as the next lines after `scaling(scale_steps)`:
```
  posx_steps += 0.007
  posy_steps += 0.011
```
These should also be indented with a single tab.

Save the script and run the game again. The parent Node2D is now oscillating by 600 pixels (in both dimensions) around the origin. How does that change how the Player is responding to the mouse?

Next, let's add scaling. Replace the scaling function with the following:
```
func scaling(amount):
  scale.x = sin(amount) + 1.1
  scale.y = sin(amount) + 1.1
```

And add this to `_physics_process(delta):` after the lines you have added:
```
  scale_steps += 0.003
```

Test it again. What is happening to the Player? Why is it behaving that way?

Finally, let's mess with the rotation of Node2D. Replace the rotating function with this:
```
func rotating(rad):
  rotation = sin(rot_steps)
```

And add this to `_physics_process(delta):` after the lines you added previously:
```
  rot_steps += 0.005
```

Save the scene, and play the game now. Notice, you haven't changed the Player code at all. Why isn't it following the mouse any more? See if you can win the game.

Quit Godot. In GitHub desktop, you should now see the updated files listed in the left panel. In the bottom of that panel, type a Summary message (something like "Completes my first Godot game") and press the "Commit to master" button. On the right side of the top, black panel, you should see a button labeled "Push origin". Press that now.

If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-02a-Node2D) on Canvas.

The final state of the file should be as follows (replacing my information with yours):
```
# Exercise-02a-Node2D
Exercise for MSCH-C220, 8 September 2020

A simple game exploring Node2D translation, scale, and rotation.

## Implementation
Built using Godot 3.2.2

## References
None

## Future Development
None

## Created by 
Jason Francis

```
