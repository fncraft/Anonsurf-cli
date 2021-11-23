import strformat

# type
#   callback_send_messenger* = proc(title, body: string, code: int)


proc cli_send_msg*(title, body: string, code: int) {.gcsafe, locks: 0.} =
  #[
    Print message to CLI
    0: Ok
    1. Warn
    2. Error
  ]#
  const
    B_MAGENTA = "\e[95m"
    B_GREEN = "\e[92m"
    B_RED = "\e[91m"
    B_CYAN = "\e[96m"
    B_BLUE = "\e[94m"
    RESET = "\e[0m"
    
  if code == 0:
    echo fmt"[{B_GREEN}*{RESET}] {title}"
    echo fmt"{B_GREEN}{body}{RESET}"
  elif code == 1:
    echo fmt"[{B_MAGENTA}!{RESET}] {title}"
    echo fmt"{B_BLUE}{body}{RESET}"
  elif code == 2:
    echo fmt"[{B_RED}x{RESET}] {title}"
    echo fmt"{B_CYAN}{body}{RESET}"
