# include <stdio.h>

int lread () {
  int d;
  printf ("> ");
  fflush (stdout);
  scanf ("%d", &d);
  return d;
}

void lwrite (int n) {
  printf ("%d\n", n);
  fflush (stdout);
}
