public class StringArrayTest {
    
    public static List<String> generateStringArray (Integer len){
        
        List<String> Test = new List<String>();
        
        for(Integer i=0;i<len;i++){
            Test.add('Test '+i);
        }
        
        return Test;
    }

}