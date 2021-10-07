@isTest
private class HomeworkTest 
{
    @isTest
    static void testTotal()
    {
        Integer total=getHomework().total(new List<Integer>{1,2,3,5,7});
        System.assertEquals(18, total, 'Total should be 18');
    }

    @isTest
    static void testMax()
    {
        Integer max=getHomework().maxInListLoop(new List<Integer>{3,2,-1,5,1});
        System.assertEquals(5, max, 'Max should be 5');
    }

    @isTest
    static void testMaxInListLoop()
    {
        Integer max=getHomework().maxInlistLoop(new List<Integer>{3,2,-1,5,1});
        System.assertEquals(5, max, 'Max should be 5');
    }

    @isTest
    static void testMaxInList()
    {
        Integer max=getHomework().maxInList(new List<Integer>{3,2,1,9,17,12});
        System.assertEquals(17, max, 'Max should be 17');
    }
 
    @isTest
    static void testReverse()
    {
        List<Integer> originals=new List<Integer>{7,1,8,-1,4};
        List<Integer> reversed=getHomework().reverse(originals);
        System.assertEquals(new List<Integer>{4,-1,8,1,7}, reversed, 'Reversal of list failed');
    }
 
    @isTest
    static void testEveryThird()
    {
        List<String> thirds=getHomework().everyThird(new List<String>{'one', 'two', 'three', 'four', 'five', 'six'});
        System.assertEquals(new List<String>{'one', 'four'}, thirds, 'Thirds failed');
    }
 
    @isTest
    static void testUniqueCharacters()
    {
        Integer uniqueChars=getHomework().uniqueCharacters('george foreman');
        System.assertEquals(9, uniqueChars, 'Should be 9 unique chars');
    }
 
    @isTest
    static void testPositionsByCharacter()
    {
        Map<String, List<Integer>> posByChars=getHomework().getPositionsByCharacter('george foreman');
        Map<String, List<Integer>> expected=new Map<String, List<Integer>>();
        expected.put('g', new List<Integer>{0, 4});
        expected.put('e', new List<Integer>{1, 5, 10});
        expected.put('o', new List<Integer>{2, 8});
        expected.put('r', new List<Integer>{3, 9});
        expected.put('f', new List<Integer>{7});
        expected.put('m', new List<Integer>{11});
        expected.put('a', new List<Integer>{12});
        expected.put('n', new List<Integer>{13});
        expected.put(' ', new List<Integer>{6});
        System.assertEquals(expected, posByChars, 'Position by characters failed');
    }

    @isTest
    static void testSwapOver()
    {
        Map<Integer, String> inputMap=new Map<Integer, String>{
            1=>'One',
            2=>'Two',
            3=>'Three'
        };

        Map<String, Integer> swapped=getHomework().swapOver(inputMap);
        System.assertEquals(1, swapped.get('One'), 'One should match');
        System.assertEquals(2, swapped.get('Two'), 'One should match');
        System.assertEquals(3, swapped.get('Three'), 'One should match');
    }
 
    @isTest
    static void testValueOfHand()
    {
        List<String> handOfCards=new List<String>{
            'Ace', 'Five', 'Jack', 'King'
        };

        System.assertEquals(26, getHomework().valueOfHand(handOfCards), 'Hand of cards total is incorrect');
    }

    @isTest
    static void testRotateFinalThree()
    {
        List<Integer> original=new List<Integer>{1,2,3,4,5,6,7,8,9,10};
        List<Integer> rotated=new List<Integer>{8,9,10,1,2,3,4,5,6,7};
        

        System.assertEquals(rotated, getHomework().rotateFinalThree(original), 'Rotated result is incorrect');
    }

    @isTest
    static void testUniqueWords()
    {
        String original='Hello from Keir from Hello Land';
        String unique=getHomework().uniqueWords(original);

        List<String> uniqueWords=unique.split(' ');
        System.assertEquals(4, uniqueWords.size(), 'Should be four unique words');
    }    

    private static Homework getHomework()
    {
        return new Homework();
    }
}
