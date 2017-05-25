void setup() {
    String s1 = "Harry und Harry gehen zu Harry";
    String s2 = "harry und sally";
    println(countHarry(s1));
    println(countHarry(s2));
    println(teilerVon(3, 9));
    println(teilerVon(3, 7));
    println(teilerVon(5, 25));
}

boolean teilerVon(int a, int b) {
    return (b % a) == 0;
}

int countHarry(String text) {

    int count = 0;

    String[] splitted = split(text, " ");

    for (int i = 0; i < splitted.length; i++) {
        if (splitted[i].equals("Harry")) {
            count++;
        }
    }

    return count;
}