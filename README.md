# ExpertCircuitPython
# Circuit Python
My Expert CircuitPython assignments (Elisabeth Scharf)
The files in this repository are all CircuitPython and Processing assignments from the Expert CircuitPython module. This module is designed to give us a further understanding of CircuitPython and also to introduce us to Processing. 

Here is a super helpful link for [formatting your README file.](https://help.github.com/en/articles/basic-writing-and-formatting-syntax)

# Assignments:
- ## CircuitPython to Processing
**Goal:**

Gather the values of a potentiometer in VS code with CircuitPython then transmit that data as bytes through the UART cable to Processing where they will be displayed in the form of a speedometer image. 

**Lessons learned:**
1. You classmates can be one of your best resources (maybe second to the teacher and google). This assignment had many different components and by sharing knowledge that we had gained, we were able to complete the assignment much more efficiently. One person understood how to draw in Processing, the other knew how to convert to bytes, and someone else could figure out the wiring. By starting the assignment in different places, (I started with Processing while other people started with VS code) we were able to help eachother out with our new found knowledge. 
2. What you learn in math class is actually useful! (Crazy idea, I know.) Drawing a speedometer in Processing is not as easy as it sounds and we had to use trig to get the shape that we wanted. So I learned that it is important to pay close attention in math class and that trig is useful outside of my PreCalc textbook. :) 
<img src="Media/ProcessingToCircuitPy%20(1).PNG" width="500">

- ## Processing to CircuitPython
**Goal:**

Create a graphical user interface in Processing comprised of a graph with a dot that follows your mouse and two servo readings. When the user drags their mouse over the grid, the dot moves with their mouse and the servo angles read the same as the x and y coordinates of the dot on the graph. Then send this data from Processing to VS Code where CircuitPython commands will make the servos move to the angles given by the coordinates. 

**Lessons learned:**

1. Use other code! You shouldn't have to write it all from scratch and come up with it out of thin air. I was able to do research for my code by looking at my servo assignment from the first CircuitPython module and adapt some of that code to use in this assignment. That way I know the libraries that I needed, the commands to use, and the logic that controls servos. 
2. Take it step by step and be patient. I first focused on just getting the GUI up and running, then added the servo angles in response to the coordinates. Then I figured out how to transmit those numbers from Processing to CircuitPython. Finally, I used CircuitPython to control servos and then figured out how to use the coordinates to control the servos. It has to be taken step by step and each one took me a while to do, but it all eventually come together to the one assignment. 
<img src="Media/Final%20LED%20fade%20fritzing%20diagram%20image.PNG" width="500">
