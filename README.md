<div align="center">

# Mini Talk

![Static Badge](https://img.shields.io/badge/Score-%3115%2F100-green?style=for-the-badge&logo=42&logoColor=%23000000&labelColor=%2384DCC6&color=%23D6EDFF)
![Static Badge](https://img.shields.io/badge/Language-green?style=for-the-badge&logo=C&logoColor=%23000000&labelColor=%2384DCC6&color=%23D6EDFF)

[![Static Badge](https://img.shields.io/badge/Music%20Suggestion-Click%20Me?style=for-the-badge&logo=YouTube&logoColor=%23000000&labelColor=%23FFFFFF&color=%23FF0000)](https://www.youtube.com/watch?v=_wUKGHPbn_k)

# About

</div>

Minitalk is a project that belongs to the 42 common-core and it was the fifth project that I developed during it.

Minitalk challenges the student to create two programs, a server which prints it's PID and the client which receives the server's PID and an user defined message to sent to the server. This works through [UNIX signals](https://www.math.stonybrook.edu/~ccc/dfc/dfc/signals.html) a tool that will be explained later in this document.

<div align="center">

___

# Testing

</div>

> This project was tested only on UNIX based machines and it might not work properly on windows

To run this project both clang and gcc need to be installed.

First clone the repo

`git clone https://github.com/mota494/42_minitalk.git MM_minitalk`

Go to the directory created and run

`make`

Firstly run server

`./server` -> This will print the PID

Open another terminal and run the client with the PID that the server gave you and the message you want to send

`./client SERVER_PID "YOUR_MESSAGE"`

</div>
