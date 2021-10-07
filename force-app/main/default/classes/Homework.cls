public with sharing class Homework 
{
    // Create the method bodies as requested by the comments,  as shown in the
    // example below. 

    // EXAMPLE: Take a List of Integers, total them up and return the total
    public Integer total(List<Integer> values)
    {
        Integer result=0;
        for (Integer idx=0; idx<values.length; idx++)
        {
            result+=values[idx];
        }

        return result;
    }

    // 1. Take a List of integers and return the largest value using a loop
    public Integer maxInListLoop(List<Integer> values)
    {

    }

    // 2. Take a List of integers and return the largest value without using a loop.
    public Integer maxInList(List<Integer> values)
    {

    }

    // 3. Take a list of Integers and reverse the order
    public List<Integer> reverse(List<Integer> values)
    {

    }

    // 4. Take a list of Strings and extract every third element into a new list that is returned. 
    //    Extra credit for handling that the list passed in may not be exactly divisible by 3.
    public List<String> everyThird(List<String> originals)
    {

    }

    // 5. Take a String and return the number of unique characters in the String.
    public Integer uniqueCharacters(String value)
    {

    }

    // 6. Take a String and return a map of characters and their position in the String. 
    //    Note that characters may occur more than once and you should identify the 
    //    position of all occurrences.
    public Map<String, List<Integer>> getPositionsByCharacter(String value)
    {

    }

    // 7. Take a map of type Map<Integer, String> and return a map of type Map<String, Integer> with the keys and values swapped
    public Map<String, Integer> swapOver(Map<Integer, String> inMap)
    {

    }

    // 8. Take a List of Strings representing playing cards - 
    //                   ‘Ace’, ‘Two’, ‘Three’, … , ‘Jack’, ‘Queen’, ‘King’. 
    //    Calculate the total value of the cards where :
    //             ‘Ace’ has the value 1
    //             ‘Two’ has the value 2, etc. 
    //              ‘Jack’, ‘Queen’, ‘King’ have the value 10.
    public Integer valueOfHand(List<String> cards)
    {

    }

    // 9. Take a List of 10 Integers and return a new List where Integers at position 8, 9 and 10 
    //    are moved to the front of the list. 
    //   For example, if the input list is 1,2,3,4,5,6,7,8,9,10, 
    //          the returned list would be 8,9,10,1,2,3,4,5,6,7
    public List<Integer> rotateFinalThree(List<Integer> values)
    {

    }

    // 10. Take a String containing a number of words separated by whitespace and remove any duplicates.
    //  Hint: String.split and String.join allow you to turn Strings into lists and vice versa. 
    //  You should be able to achieve this in around 6 lines without any loops.
    public String uniqueWords(String original)
    {

    }
}
