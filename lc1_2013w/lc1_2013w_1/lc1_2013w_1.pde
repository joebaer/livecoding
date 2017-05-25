float[] test = { 0.5, 2, 3.5 };

void setup() {
    int z = betrag(-30);
    float d = durchschnitt(test);
    println(z);
    println(d);
}

int betrag(int number) {
    if (number < 0) {
        number = -number;
    } 
    return number;
}

float durchschnitt(float[] arr) {
    float avarage = 0;
    if (arr.length > 0) {
        for (int i = 0; i < arr.length; i++) {
            avarage += arr[i];
        }
        avarage /= arr.length;
    }
    return avarage;
}