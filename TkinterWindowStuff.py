#Tkinter GUI Window
print("Jonelle is a rawt");
#Importing the tkinter module into the program.
#We have also imported the label and button objects, these allow
#the window to have labels and button, we can use the * symbol to import everything
#in the tkinter module so we do not need to specify components in the module.
from tkinter import *
from random import randint

#declare a class to house components of the window.
class MyFirstGUI:
    
    def __init__(self, master):
        
        self.master = master
        #.title is the text at the top of the window
        master.title("A simple GUI")
        
        self.label = Label(master, text="This is our first GUI!")
        self.label.pack()
        #.pack() positions a component inside its parent component.
        #in this case the parent is the tkinter window, this is also why
        #the title element does not have a .pack() function attached, since
        #the title component is not inside the window.
        
        self.greet_button = Button(master, text="Greet", command=self.greet)
        self.greet_button.pack()
        #command allows us to attach a predefined function to a button.
        #so in this case the greet button underneath has the greet function
        #attached which will print greet to the console.

        self.rolldice_button = Button(master, text="Roll Dice", command=self.roll)
        self.rolldice_button.pack()

        self.close_button = Button(master, text="Close", command=master.quit)
        self.close_button.pack()
        
    def roll(self):
        dice = randint(1,6)
        #message box pop up, when the roll dice button is clicked a message
        #box pops up with a random number between  1 and six
        messagebox.showinfo("Dice Roll", dice)
        
        
    #greet function for the greet button, which only activates when the greet
    #button is pressed.
    def greet(self):
        print("Greetings!")
   

root = Tk()
my_gui = MyFirstGUI(root)
root.mainloop()


