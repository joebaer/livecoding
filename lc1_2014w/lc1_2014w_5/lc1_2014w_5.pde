int[]  foo  =  {  22, 44, 66, 99 }; 
int[]  bar  =  {  20, 10, 40, 80 }; 

//int[]  foo  =  {  22, 44, 66, 99, 55, 82 }; 
//int[]  bar  =  {  20, 10, 40, 80, 64, 34 }; 

void setup() {
    int[] result = combine(foo, bar);
    println(result);
}

int[] combine(int[] foo, int[] bar) {
    int[] result = new int[foo.length];
    
    for(int i = 0; i < result.length; i++) {
        if(i % 2 == 0) {
            result[i] = foo[i];
        } else {
            result[i] = bar[i];
        }
    }
    
    return result;
    
}