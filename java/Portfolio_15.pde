//ArrayOfStringAndChar Submission
import javax.swing.JOptionPane;

//main program
public static void main(String []args)
{
  String[] seminarNames = new String [5];
  JOptionPane.showMessageDialog(null, "You will be asked to input 5 names into the program to be stored.");

  /* For every index in the array a dialog box asks for user input, captures the string entered 
   and places it into the next open index */
  for (int x = 0; x < seminarNames.length; x++)
  {
    seminarNames[x] = JOptionPane.showInputDialog("Please enter a name into the dialog box: ");
  }

  /* A nested loop to sort out the names alphabetically using the .compareTo() function
   which will return a negative number if the string object on the left side of the 
   function alphabetically precedes the argument string, the right side of the function.
   Opposite way for a positive integer return, returns zero if the 2 are alphabetically equal. */
  String temp;
  for (int i = 0; i < seminarNames.length; i++) 
  {
    for (int j = i + 1; j < seminarNames.length; j++) 
    { 
      if (seminarNames[i].compareTo(seminarNames[j]) > 0) 
      {
        //need a temp variable to hold a name while they are being swapped.
        //essentially a basic bubble sort algorithm.
        temp = seminarNames[i];
        seminarNames[i] = seminarNames[j];
        seminarNames[j] = temp; 
      }
    }
  }

  //Iterates through the array printing each name in each index in a line.
  for (int y = 0; y < seminarNames.length; y++) 
  {
    System.out.print(seminarNames[y] + ", ");
  }

  //Iterates through the array calculating the length of each name in each index  printing them out in a line.
  System.out.println(" ");
  System.out.println(" ");
  System.out.println("These are the character lengths of the names entered into the system: ");
  for (int z = 0; z < seminarNames.length; z++) 
  {
    int charLength = seminarNames[z].length();
    System.out.print(charLength + ", ");
  }

  //Here is where the vowel counter method is called, to store these numbers we need to instantiate another array.
  System.out.println(" ");
  System.out.println(" ");
  System.out.println("These are numbers of vowels in each name: ");
  int[] seminarVowelCount = new int [5];
  for (int w = 0; w < seminarNames.length; w++)
  {
    seminarVowelCount[w] = CountVowels(seminarNames[w]);
  }

  //for loop to print out the contents of the counter array.
  for (int u = 0; u < seminarVowelCount.length; u++) 
  {
    System.out.print(seminarVowelCount[u] + ", ");
  }
}

/* Seperate method to count the vowels in each name. takes a string comppares 
 each character to a, e, i, o, or u, and if the character matches it is tallied into a vowel count variable. */
public static int CountVowels(String str)
{
  str = str.toLowerCase();
  int count = 0;
  for (int v = 0; v < str.length(); v++)
  {
    if (str.charAt(v) == 'a' || str.charAt(v) == 'e' || str.charAt(v) == 'i' 
      || str.charAt(v) == 'o' || str.charAt(v) == 'u')
    {
      count++;
    }
  }
  //The count variable is returned and added to separate array of vowel counts in the main method.
  return count;
}
