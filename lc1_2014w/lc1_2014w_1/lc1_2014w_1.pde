void setup() {
    String a1 = anrede("Harry", false);
    String a2 = anrede("Sally", true);
    println(a1);
    println(a2);
    println(versichern(40, 55000, 1.7));
    println(versichern(55, 135000, 1.6));
    println(versichern(24, 8000, 1.91));
    println(versichern(51, 40000, 1.90));
    println(versichern(14, 100, 1.81));
}

String anrede(String name, boolean isFemale) {
    if (isFemale) {
        return "Liebe " + name;
    } else {
        return "Lieber " + name;
    }
}

boolean versichern(int alter, float einkommen, float koerpergroesse) {
    boolean insure = false;
    if (einkommen > 50000 && alter < 50) {
        insure = true;
    }
    if (alter > 50 && einkommen >= 100000) {
        insure = true;
    }
    if (alter < 30 && koerpergroesse >= 1.8) {
        insure = true;
    }
    return insure;
}