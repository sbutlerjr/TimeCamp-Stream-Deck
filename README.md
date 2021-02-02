# Time Camp Streak Deck Scripts

Includes scripts to start and stop time camp timers for your projects/tasks, currently Windows only.  They can be setup as "Multi-Action Switch" buttons on your stream deck to start and stop timers.
In my personal setup, I have each project I track time against as its own button, making it easy to start/stop tracking against each Time Camp project.

## Installation

Download the timecamp_timer_start.ps1 and timecamp_timer_stop.ps1 files and place them in a folder on your local computer, for this example, we'll assume you've installed them in: 


```bash
 C:\TimeCamp-Stream-Deck\
```

## Usage

In Stream Deck, setup a Multi-Action Switch button. Use a System Open command. In the file/action use this to start the timer, replacing <task-id> with the project/task you want to start:

```bash
powershell -ExecutionPolicy ByPass -WindowStyle Hidden -File  C:\TimeCamp-Stream-Deck\timecamp_timer_start.ps1 <task-id>
```

In the second step, also use a System Open command. In the file/action use this to stop the timer:

```bash
powershell -ExecutionPolicy ByPass -WindowStyle Hidden -File  C:\TimeCamp-Stream-Deck\timecamp_timer_stop.ps1
```

## Mac
These scripts could easily be ported to shell scripts for Mac support, but I have no plans to do that since I'm using a Windows system.

## License
[MIT](https://choosealicense.com/licenses/mit/)
