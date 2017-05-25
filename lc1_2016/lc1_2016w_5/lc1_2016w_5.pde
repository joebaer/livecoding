int[] a = { 1, 2, 3, 4, 5, 6 };
//int[] a = { 44, 55, 22, 33 };

void setup() {
    int[] swapped = swap(a);
    println(swapped);
}

int[] swap(int[] arr) {
    int[] result = {};
    
    result = concat(result, subset(arr, arr.length / 2, arr.length / 2));
    result = concat(result, subset(arr, 0, arr.length / 2));
    
    return result;
}