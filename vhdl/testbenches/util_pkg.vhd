library ieee;
library std;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

package util_pkg is

  type log_type is record
    log2stdout   : boolean;
    log2file     : boolean;
    logfile_name : string;
  end record log_type;

  procedure printf (msg : in string);
  procedure printf (log : in log_type; msg : in string);
  procedure info (log   : in log_type);

end package util_pkg;

package body util_pkg is

  -- purpose: print message on stdout
  procedure printf(msg : in string) is
    variable msg_line : line;
  begin  -- procedure printf
    write(msg_line, string'(msg));
    writeline(output, msg_line);
  end procedure printf;

  procedure printf(log : in log_type; msg : in string) is
    variable msg_line : line;
    file log_file     : text open append_mode is log.logfile_name;
  begin
    if log.log2stdout then
      write(msg_line, justify(to_string(now, ns), right, 10) & ": " & string'(msg));
      writeline(output, msg_line);
    end if;
    if log.log2file then
      write(msg_line, justify(to_string(now, ns), right, 10) & ": " & string'(msg));
      writeline(log_file, msg_line);
    end if;
  end procedure printf;

  procedure info (log : in log_type) is
  begin
    printf(LF & "*******************************************");
    if log.log2stdout then
      printf("logging to std_out enabled.");
    else
      printf("logging to std_out disabled.");
    end if;
    if log.log2file then
      printf("logging to log file enabled.");
      printf("logfile: " & log.logfile_name);
    else
      printf("logging to file disabled.");
    end if;
        printf("*******************************************");
  end procedure info;

end package body util_pkg;


