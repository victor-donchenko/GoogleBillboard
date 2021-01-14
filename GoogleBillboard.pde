public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

boolean is_prime(long num) {
  if (num < 2) {
    return false;
  }
  for (int i = 2; i < (long)Math.sqrt(num) + 1; ++i) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

long first_10_digit_prime_number_in_e = 0;

public void setup() {            
    String first_10_digits_str = e.substring(0, 1) + e.substring(2, 11);
    long first_10_digits = Long.parseLong(first_10_digits_str);
    if (is_prime(first_10_digits)) {
      first_10_digit_prime_number_in_e = first_10_digits;
      System.out.println(first_10_digit_prime_number_in_e);
      return;
    }
    
    int i = 2;
    while (!is_prime(Long.parseLong(e.substring(i, i + 10)))) {
      ++i;
    }
    
    first_10_digit_prime_number_in_e = Long.parseLong(e.substring(i, i + 10));
    System.out.println(first_10_digit_prime_number_in_e);
    return;
}

public void draw() {
  //not needed for this assignment
}  
