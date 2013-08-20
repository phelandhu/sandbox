<?php
  function one($str1, $str2)
  {
    two("Glenn", "Quagmire");
  }
  function two($str1, $str2)
  {
    three("Cleveland", "Brown");
  }
  function three($str1, $str2)
  {
    print_r(debug_backtrace());
  }

one("Peter", "Griffin");
?>