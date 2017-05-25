String[] n= {"Schmidt", "Meier", "Huber", "Weiher", "Gross"};

void setup() {

    String[] result = doubleElements(n);
    
    println(result);
    
}

String[] doubleElements(String[] arr) {
    
    String[] result = {};
    
    for(int i = 0; i < arr.length; i++) {
        result = append(result, arr[i]);
        result = append(result, arr[i]);
    }
    
    return result;
    
}