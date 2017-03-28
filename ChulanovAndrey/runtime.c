# include <stdio.h>

int lread () {
  int d;
  printf ("> ");
  scanf ("%d", &d);
  return d;
}

void lwrite (int n) {
  printf ("< %d\n", n);
}
