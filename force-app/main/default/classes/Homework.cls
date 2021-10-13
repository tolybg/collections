public with sharing class Homework 
{
    // Create the method bodies as requested by the comments,  as shown in the
    // example below. 

    // EXAMPLE: Take a List of Integers, total them up and return the total
    public Integer total(List<Integer> values)
    {
        Integer result=0;
        for (Integer idx=0; idx<values.size(); idx++)
        {
            result+=values[idx];
        }

        return result;
    }

    // 1. Take a List of integers and return the largest value using a loop
    public Integer maxInListLoop(List<Integer> values)
    {
        Integer max = values[0];

        for (Integer j = 1; j < values.size() - 1; j++) {

            max = (values[j] > max) ? values[j] : max;
        }
        
        return max;
    }

    // 2. Take a List of integers and return the largest value without using a loop.
    public Integer maxInList(List<Integer> values)
    {
        Integer last = values.size() - 1;
        values.sort();
        System.debug(values);
        Integer max = values[last];
        System.debug('max => ' + max);
        return max;
    }

    // 3. Take a list of Integers and reverse the order
    public List<Integer> reverse(List<Integer> values)
    {
        List<Integer> reverseValues = new List<Integer>();

        for (Integer i = values.size() - 1; i >= 0; i--) {
            reverseValues.add(values[i]);
        }
        return reverseValues;
    }

    // 4. Take a list of Strings and extract every third element into a new list that is returned. 
    //    Extra credit for handling that the list passed in may not be exactly divisible by 3.
    public List<String> everyThird(List<String> originals)
    {
        List<String> everyThird = new List<String>();
        Integer divisibleLength = originals.size() - Math.mod(originals.size(), 3);
        System.debug(LoggingLevel.ERROR, '\n####  divisibleLength => ' + divisibleLength); //TODO: Remove this debug statement

        for (Integer i = 0; i < divisibleLength; i += 3) 
        {
            everyThird.add(originals[i]);
            System.debug('Adding originals[' + i + '] => ' + originals[i]);
        }
        
        return everyThird;

    }

    // 5. Take a String and return the number of unique characters in the String.
    public Integer uniqueCharacters(String value)
    {
        //This is assuming that 'unique characters' means string 'a','b','c'... etc
        Set<String> stringChars = new Set<String>(value.split(''));

        return stringChars.size();

    }

    // 6. Take a String and return a map of characters and their position in the String. 
    //    Note that characters may occur more than once and you should identify the 
    //    position of all occurrences.
    public Map<String, List<Integer>> getPositionsByCharacter(String value)
    {
        Map<String, List<Integer>> posMap = new Map<String, List<Integer>>();
        List<String> valueList = value.split('');
        Set<String> uniqueChars = new Set<String>(valueList);
        List<String> charsToIterate = new List<String>(uniqueChars);
        
        for (String c : charsToIterate) {
            Integer pos = 0;
            List<Integer> foundPositions = new List<Integer>();
            
            for (String v : valueList) {
                if(v.toLowerCase() == c.toLowerCase())
                {
                    foundPositions.add(pos);
                }
                pos++;
            }

            posMap.put(c,foundPositions);
        }
        

        return posMap;
    }

    // 7. Take a map of type Map<Integer, String> and return a map of type Map<String, Integer> with the keys and values swapped
    public Map<String, Integer> swapOver(Map<Integer, String> inMap)
    {
        Map<String, Integer> swappedMap = new  Map<String, Integer>();
        for (Integer i : inMap.keyset()) {
            swappedMap.put(inMap.get(i), i);
        }
        return swappedMap;
    }

    // 8. Take a List of Strings representing playing cards - 
    //                   ‘Ace’, ‘Two’, ‘Three’, … , ‘Jack’, ‘Queen’, ‘King’. 
    //    Calculate the total value of the cards where :
    //             ‘Ace’ has the value 1
    //             ‘Two’ has the value 2, etc. 
    //              ‘Jack’, ‘Queen’, ‘King’ have the value 10.
    public Integer valueOfHand(List<String> cards)
    {
        Integer totalValue = 0;

        Map<String,Integer> cardValues = new Map<String,Integer>{
            'ace'   => 1,
            'two'   => 2,
            'three' => 3,
            'four'  => 4,
            'five'  => 5,
            'six'   => 6,
            'seven' => 7,
            'eight' => 8,
            'nine'  => 9,
            'ten'   => 10,
            'jack'  => 10,
            'queen' => 10,
            'king'  => 10
        };

        for (String card : cards) {
            totalValue += cardValues.get(card.toLowerCase());
        }

        return totalValue;
        
    }


    // 9. Take a List of 10 Integers and return a new List where Integers at position 8, 9 and 10 
    //    are moved to the front of the list. 
    //   For example, if the input list is 1,2,3,4,5,6,7,8,9,10, 
    //          the returned list would be 8,9,10,1,2,3,4,5,6,7
    public List<Integer> rotateFinalThree(List<Integer> values)
    {
        Integer len = values.size() - 1;

        if (len < 4) {
            return values;
        } 

        List<Integer> result = new List<Integer>();

        result.add(values[len - 2]);
        result.add(values[len - 1]);
        result.add(values[len]);

        values.remove(len);
        values.remove(len -1);
        values.remove(len -2);

        result.addAll(values);

        // for (Integer i = 0; i < len - 3 ; i++)
        // {
        //     result.add(values[i]);
        // }

        return result;
    }

    // 10. Take a String containing a number of words separated by whitespace and remove any duplicates.
    //  Hint: String.split and String.join allow you to turn Strings into lists and vice versa. 
    //  You should be able to achieve this in around 6 lines without any loops.
    public String uniqueWords(String original)
    {
        Set <String> uniqueStr = new Set<String>(original.split(' '));
        return uniqueStr.toString();
    }
}
