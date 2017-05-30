# include <stdio.h>

long lread () {
  long d;
  printf ("> ");
  fflush (stdout);
  scanf ("%ld", &d);
  return d;
}

void lwrite (long n) {
  printf ("%ld\n", n);
  fflush (stdout);
}
