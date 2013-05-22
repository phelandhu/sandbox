/*
 * parse: parse simple name/value pairs
 *
 * SAMPLE BUILD:
 * 	gcc main.c readConfig.c -Wall -o2 -o readParam
 *
 * SAMPLE OUTPUT:
 * ./parse =>
 *   Initializing parameters to default values...
 *   Reading config file...
 *   Final values:
 *     item: cone, flavor: vanilla, size: large
 */
#include <stdio.h>
#include "readConfig.h"

/*
 * program main
 */
int main (int argc, char *argv[])
{
  struct sample_parameters parms;

  printf ("Initializing parameters to default values...\n");
  init_parameters (&parms);

  printf ("Reading config file...\n");
  parse_config (&parms);

  printf ("Final values:\n");
  printf ("  port: %s, speed: %s, stop bits: %s\n",
    parms.port, parms.speed, parms.stop);

  return 0;
}
