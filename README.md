# Licenta

Al doilea repository. Verifica!!!



# Licenta

# Content
## How to use!
### Scipt information
### Running the script
#### 1. Konsole
#### 2. VS Code
#### 3. QuestaSim
### Opening waveforms
## Repository information



# How to use!

## Scipt information

Naming guidelines:
- verbosityLevel = LOW, MEDIUM, HIGH, NONE, DEBUG, FULL
- unit = CD, UART, VGA, etc.
- testName =  CD_test DB_test etc.

Examples:
- ./script.tcl LOW UART UART_test UART_parity_error_test UART_reconfiguration_test
- ./script.tcl DEBUG DB DB_test

## Running the script

You can run a test in 3 different ways:
- in Konsole
- in VS Code Terminal
- in QuestaSim

### 1. Konsole
- go to the Licenta folder
- open the Konsole
- in the Konsole write: ./script.tcl verbosityLevel unitName testName
- the transcript, coverage report and waveform are saved in the folders transcript, coverage and wave with the testName

### 2. VS Code
- go to the Licenta folder
- open the Konsole
- open VS Code by writing: code .
- in VS Code open the Terminal
- in the Terminal write: ./script.tcl verbosityLevel unitName testName
- the transcript, coverage report and waveform are saved in the folders transcript, coverage and wave with the testName name

### 3. QuestaSim
- go to the Licenta folder
- open the Konsole
- open QuestaSim by writing: vsim&
- in the  QuestaSim Terminal write:
    - vlog -f files_unitName.f
    - vsim -voptargs=+acc +UVM_TESTNAME=testName_ +UVM_VERBOSITY=verbosityLevel work.testbench_unitName
    - from the GUI add the signal you want to see in the waveform
    - run -all
    - when QuestaSim asks if you want to close the simulation, choose No

## Opening waveforms
 
If you want to open a waveform:
- go to the Licenta folder
- open the Konsole
- open QuestaSim by writing: vsim&
- in Questasim:
    - Open (in the upper left corner)
    - navigate to the Licenta/simulare/wave folder
    - change the file type to .wlf
    - choose the waveform you want to see and open it
    - add the signals you want to see in the waveform

# Repository information