using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace ConsoleApp1
{
    class Program
    {
        //Main method of the entire program.
        static void Main(string[] args)
        {
            //boolean variable for condition controlled loop.
            bool integer = false;
            

            //while loop for checking whether user enters 2 integers.
            while (integer == false)
            {
                //asks user for lower limit of random number generator and converts read answer into decimal data type from string.
                Console.WriteLine("Please type whole number for the lower limit: ");
                decimal minValue = Convert.ToDecimal(Console.ReadLine());

                //asks user for upper limit of random number generator and converts read answer into decimal data type from string.
                Console.WriteLine("   ");
                Console.WriteLine("Please type whole number for the upper limit: ");
                decimal maxValue = Convert.ToDecimal(Console.ReadLine());

                /*
                Using MOD (%) which checks for the remainder of a number after divsion, we determine whether both numbers are integers.
                For example 10 % 1 means 10 what is the remainder of 10 divided by 1, which is 0 meaning 10 is a whole number, if it was
                10.5 % 1 the remainder would be 0.5 which is not 0 therefore 10.5 is not an integer. */
                if (minValue % 1 == 0 && maxValue % 1 == 0)
                {
                    //If 2 whole numbers are entered then change the boolean variable to free us from the while loop.
                    integer = true;

                    //Now we check that the minimum value is less than the maximum.
                    if (minValue < maxValue)
                    {
                        //break out of while loop and continue with program.
                        break;
                    }

                    else
                    {
                        /*change integer back to false so we re-enter while loop and user is again asked 
                        to put in 2 integers the first being less value than the second.*/
                        Console.WriteLine("Please try again");
                        Console.WriteLine("---------------------");
                        integer = false;

                    }

                }

                //If any of the numbers or both aren't integers then the loop continues.
                else
                {
                    Console.WriteLine("Please try again");
                    Console.WriteLine("---------------------");

                }
            }



            //Using the number generator method and placing result in the variable num to use later.
            // int num = genRandom(minValue, maxValue);  Need to find a way to get new values of min and max out of the while loop.

            //printing out the result of the number generator method.
            //Console.WriteLine("Random number is: " + num);
            //Console.ReadKey();


        }

        //Method for generating a random number between specified limits and placing the result into the variable num.
        public static int genRandom(int minValue, int maxValue)
        {
            Random rnd = new Random();
            // + 1 so that the min and max value are both included not just min, (just less brainwork for me :P)
            int num = rnd.Next(minValue, (maxValue + 1));

            return num;
        }
    }
}
