<div align="center">

# Mini Talk

![Static Badge](https://img.shields.io/badge/Score-%3115%2F100-green?style=for-the-badge&logo=42&logoColor=%23000000&labelColor=%2384DCC6&color=%23D6EDFF)
![Static Badge](https://img.shields.io/badge/Language-green?style=for-the-badge&logo=C&logoColor=%23000000&labelColor=%2384DCC6&color=%23D6EDFF)

[![Static Badge](https://img.shields.io/badge/Music%20Suggestion-Click%20Me?style=for-the-badge&logo=YouTube&logoColor=%23000000&labelColor=%23FFFFFF&color=%23FF0000)](https://www.youtube.com/watch?v=_wUKGHPbn_k)

<b>Creating communication between processes</b>

___

# Testing

</div>

> [!Note]
> The code won't be explained on this document

> [!Important]
> This project wasn't tested on Windows machines and it was tested only on UNIX based systems
> 
> To run this project <b>both</b> [clang](https://clang.llvm.org/) and [gcc](https://gcc.gnu.org/) need to be installed.

```bash
git clone https://github.com/mota494/42_minitalk.git MM_minitalk
cd MM_minitalk
make
./server
./client SERVER_PID "YOUR_MESSAGE"
```
___

<div align="center">

# Explanations

### What are UNIX signals

</div>

Basically, a signal is a message which can be sent to a running process and can be created by the user through the terminal with the `kill` command or by other processes.

To send a signal the process needs the targets PID (Process ID) and the signal that will be sent.

Let's say that there's a process running with the PID 7328 and the intent is to terminate that process to do that we use it's PID and the proper signal, in this case, SIQGUIT:

```bash
kill 7328 SIGQUIT
```

There are a lot of pre defined signals that each do different stuff, in our case we will only use the SIGUSR1 and SIGUSR2 two signals that the function can only be determined by the user.

___

<div align="center">

### Char to binary conversion

</div>

During my evaluations the evaluators were really curious about how i handled the conversion from char to binary since i "ran away" from using bitwise operations.

The formula that i used is a very simple one and easy to understand, basically, you take the character received ASCII value and divided it by 2 seven times, if the remainder is 0 than that bit from the byte will be 0, if the remainder is not 0 than that bit will be a 1.

<details>
  <summary><h4>Example</h4></summary>
    
```
A = 65

65%2 = 1
Octet: |1| | | | | | |
65/2 ~= 32

32%2 = 0
Octet: |1|0| | | | | |
32/2 = 16

16%2 = 0
Octet: |1|0|0| | | | |
16/2 = 8

8%2 = 0
Octet: |1|0|0|0| | | |
8/2 = 4

4%2 = 0
Octet: |1|0|0|0|0| | |
4/2 = 2

2%2 = 0
Octet: |1|0|0|0|0|0| |
2/2 = 1

1%2 = 1
Octet: |1|0|0|0|0|0|1|
```

</details>
