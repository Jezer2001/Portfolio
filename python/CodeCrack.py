#CODE CRACK PROGRAM

#the code as as one string with no spaces.
jumbledCodeString = "AWVLIQIQVTQOSQOELGCVIIQWDLCUQEEOENNWWOA"\
"OLTDNUQTGAWTSMDOQTLAOQSDCHPQQIQDQQTQOOTUDBNIQHBHHTDUTEETFDUE"\
"AUMORESQEQEMLTMETIRECLICAIQATUNQRALTENEINRKG";

#An empty string variable to hold the new unjumbled code
unjumbledCodeString = ""
#counter to mark down every 13th character
counter = 0;

#for loop, for every character in the jumbled code string,
#first add it to the unjumbled string with a space infront, then increase the counter by 1. 
for i in jumbledCodeString:
     
     unjumbledCodeString += " " + i;
     counter+=1;

     #if the character that was just added was a multiple of 13, create a new line in the string.
     if counter%13 == 0:
          unjumbledCodeString += ('\n')
          
#finally just replace every q in the unjumbled list with an empty space so it can be read easily.
print(unjumbledCodeString.replace('Q', ' '));

#The code is;

#A COMPUTER WOULD DESERVE TO BE CALLED INTELLIGENT IF IT COULD DECEIVE A HUMAN 
#INTO BELIEVING THAT IT WAS HUMAN WWW.METRO.CO.UK/TURING. 
