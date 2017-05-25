void setup() {
    float[] a1 = { 1.5, 53.9, -3.2, 100 };
    float[] a2 = { 1, 2, 3 };
    println(minArray(a1));
    println(minArray(a2));
    String n1 = doppelname("Harry Meier", "Heike Müller");
    String n2 = doppelname("Ida Tiefensee", "Max Huber");
    println(n1);
    println(n2);
}


float minArray(float[] numbers) {
    
    float min = numbers[0];
    
    for (int i = 1; i < numbers.length; i++) {
        if (numbers[i] < min) {
            min = numbers[i];
        }
    }
    
    return min;
}

String doppelname(String name1, String name2) {

    String[] split1 = split(name1, " ");
    String[] split2 = split(name2, " ");
    
    String doppelname = "Familie " + split1[1] + "-" + split2[1];

    return doppelname;
}