#! /usr/bin/bash

# echo pid is $$ #print pid(process id) of the script
# while (( COUNT < 10 ))
# do 
#     sleep 1 
#     (( COUNT++ ))
#     echo $COUNT
# done
# exit 0

# the user may interrupt the above flow by ending the task in between (ctrl+c in konsole to exit it or ctrl+z to suspend it[sigtstp])
# or simply killing the process "pkill (or kill) -9 <pid>" 
# -9 -> sig kill
# these interrupts are captured by the trap and cleaned up by tthe script (do the required execution as we want went the interrupt occurs rather than the default execution)

# here is the list for interrupts -> 

#  Signal      Standard   Action   Comment
# ────────────────────────────────────────────────────────────────────────
#  SIGABRT      P1990      Core    Abort signal from abort(3)
#  SIGALRM      P1990      Term    Timer signal from alarm(2)
#  SIGBUS       P2001      Core    Bus error (bad memory access)
#  SIGCHLD      P1990      Ign     Child stopped or terminated
#  SIGCLD         -        Ign     A synonym for SIGCHLD
#  SIGCONT      P1990      Cont    Continue if stopped
#  SIGEMT         -        Term    Emulator trap
#  SIGFPE       P1990      Core    Floating-point exception
#  SIGHUP       P1990      Term    Hangup detected on controlling terminal
#                                  or death of controlling process
#  SIGILL       P1990      Core    Illegal Instruction
#  SIGINFO        -                A synonym for SIGPWR
#  SIGINT       P1990      Term    Interrupt from keyboard
#  SIGIO          -        Term    I/O now possible (4.2BSD)
#  SIGIOT         -        Core    IOT trap. A synonym for SIGABRT
#  SIGKILL      P1990      Term    Kill signal
#  SIGLOST        -        Term    File lock lost (unused)
#  SIGPIPE      P1990      Term    Broken pipe: write to pipe with no
#                                  readers; see pipe(7)
#  SIGPOLL      P2001      Term    Pollable event (Sys V);
#                                  synonym for SIGIO
#  SIGPROF      P2001      Term    Profiling timer expired
#  SIGPWR         -        Term    Power failure (System V)
#  SIGQUIT      P1990      Core    Quit from keyboard
#  SIGSEGV      P1990      Core    Invalid memory reference
#  SIGSTKFLT      -        Term    Stack fault on coprocessor (unused)
#  SIGSTOP      P1990      Stop    Stop process
#  SIGTSTP      P1990      Stop    Stop typed at terminal
#  SIGSYS       P2001      Core    Bad system call (SVr4);
#                                  see also seccomp(2)
#  SIGTERM      P1990      Term    Termination signal
#  SIGTRAP      P2001      Core    Trace/breakpoint trap
#  SIGTTIN      P1990      Stop    Terminal input for background process
#  SIGTTOU      P1990      Stop    Terminal output for background process
#  SIGUNUSED      -        Core    Synonymous with SIGSYS
#  SIGURG       P2001      Ign     Urgent condition on socket (4.2BSD)
#  SIGUSR1      P1990      Term    User-defined signal 1
#  SIGUSR2      P1990      Term    User-defined signal 2
#  SIGVTALRM    P2001      Term    Virtual alarm clock (4.2BSD)
#  SIGXCPU      P2001      Core    CPU time limit exceeded (4.2BSD);
#                                  see setrlimit(2)
#  SIGXFSZ      P2001      Core    File size limit exceeded (4.2BSD);
#                                  see setrlimit(2)
#  SIGWINCH       -        Ign     Window resize signal (4.3BSD, Sun)

# and the list of default signal over the interrupts above -> 

#  Signal        x86/ARM     Alpha/   MIPS   PARISC   Notes
#              most others   SPARC
# ─────────────────────────────────────────────────────────────────
#  SIGHUP           1           1       1       1
#  SIGINT           2           2       2       2
#  SIGQUIT          3           3       3       3
#  SIGILL           4           4       4       4
#  SIGTRAP          5           5       5       5
#  SIGABRT          6           6       6       6
#  SIGIOT           6           6       6       6
#  SIGBUS           7          10      10      10
#  SIGEMT           -           7       7      -
#  SIGFPE           8           8       8       8
#  SIGKILL          9           9       9       9
#  SIGUSR1         10          30      16      16
#  SIGSEGV         11          11      11      11
#  SIGUSR2         12          31      17      17
#  SIGPIPE         13          13      13      13
#  SIGALRM         14          14      14      14
#  SIGTERM         15          15      15      15
#  SIGSTKFLT       16          -       -        7
#  SIGCHLD         17          20      18      18
#  SIGCLD           -          -       18      -
#  SIGCONT         18          19      25      26
#  SIGSTOP         19          17      23      24
#  SIGTSTP         20          18      24      25
#  SIGTTIN         21          21      26      27
#  SIGTTOU         22          22      27      28
#  SIGURG          23          16      21      29
#  SIGXCPU         24          24      30      12
#  SIGXFSZ         25          25      31      30
#  SIGVTALRM       26          26      28      20
#  SIGPROF         27          27      29      21
#  SIGWINCH        28          28      20      23
#  SIGIO           29          23      22      22
#  SIGPOLL                                            Same as SIGIO
#  SIGPWR          30         29/-     19      19
#  SIGINFO          -         29/-     -       -
#  SIGLOST          -         -/29     -       -
#  SIGSYS          31          12      12      31
#  SIGUNUSED       31          -       -       31


# trap "echo Exit command is detected" 0 
# # 0 signal over the exit -> success signal on exit for the script
# # trap -> WHENEVER WE RECEIVE THE FOLLOWING SIGNAL (0 HERE [FROM LIST ABOVE]) EXECUTE THE TRAP COMMAND (NOT THE DEFAULT)
# echo Hello world 

# exit 0

# trap "echo An interrupt signal is seen" 2 (SIGINT or ctrl+c) 
# THE BELOW WONT WORK THE TRAP CANT LOOK OVER SIGKILL AND SIGSTOP COMMANDS
# do "pwd" for the file path below
file=.../Traps_and_signal/FILE.TXT
trap "rm -rf $file; exit" 0 2 15 

echo pid is $$ #print pid(process id) of the script
while (( COUNT < 10 ))
do 
    sleep 10 
    (( COUNT++ ))
    echo $COUNT
done
exit 0

# TODO: look over "trap" and remove trap(trap -) commands in terminal 