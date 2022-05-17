//Imported library for random number generater function.
import java.util.Random;
import javax.swing.JOptionPane;

//main program
public static void main(String []args)
{
  boolean snakeEyes = false;
  int dice1 =  0;
  int dice2 = 0; 
  int rollNum = 0;
  int rollDistance = 0;

  while (snakeEyes == false)
  {
    rollNum++;
    JOptionPane.showMessageDialog(null, "Current roll is roll " + rollNum);

    //2 Dice rolls
    dice1 = randInt(1, 6);
    dice2 = randInt(1, 6);
    JOptionPane.showMessageDialog(null, "Dice 1: " + dice1);
    JOptionPane.showMessageDialog(null, "Dice 2: " + dice2);

    if ((dice1 == 1) & (dice2 == 1))
    {
      snakeEyes = true;
      JOptionPane.showMessageDialog(null, "SNAKE EYES!");
    } 
    else if ((dice1 != 1) || (dice2 != 1))
    {
      rollDistance = (dice1 + dice2) - 2;
      JOptionPane.showMessageDialog(null, "The distance from Snake Eyes is: " 
        + dice1  + "+" + dice2 + "-2 = " + rollDistance);
    }
  }
}


//Function to generate a random number between 1 and 6. then sab
public static int randInt(int min, int max) 
{
  Random r = new Random();
  int randomNum = r.nextInt((max - min) + 1) + min;
  return randomNum;
}
