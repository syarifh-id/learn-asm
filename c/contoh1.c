#include <stdio.h>

// Fungsi untuk melakukan perhitungan dengan nilai input
int calculate_sum(int limit, int step) {
    int sum = 0;
    for (int i = 0; i < limit; i++) {
        if (i % step == 0) {
            sum += i;
        } else {
            sum -= i;
        }
    }
    return sum;
}

// Fungsi utama untuk menghitung nilai akhir berdasarkan hasil perhitungan
int compute_final_value(int base_value, int additional_value, int adjustment_value) {
    int result = base_value + additional_value;
    if (adjustment_value > 0) {
        result += adjustment_value;
    } else {
        result -= adjustment_value;
    }
    return result;
}

int main() {
    int limit = 5;
    int step = 2;
    int base_value = 10;
    
    // Hitung nilai berdasarkan limit dan step
    int calculated_value = calculate_sum(limit, step);
    
    // Hitung nilai akhir dengan penyesuaian
    int final_value = compute_final_value(base_value, calculated_value, base_value - calculated_value + step);
    
    // Cetak hasilnya
    printf("Hasil Akhir: %d\n", final_value);
    
    return 0;
}
