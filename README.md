# es_assingment
Solution code of past 9 questions on vhdl

#### Setup Instructions

#### 1. Install `ghdl` and `gtkwave`:

```bash
sudo apt update
sudo apt install ghdl
sudo apt install gtkwave
```

#### 2. Install Visual Studio Code:

```bash
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

#### 3. Add VHDL Extension in Visual Studio Code:

Install the "VHDL" extension from the Visual Studio Code marketplace.

#### 4. Add Make Extension:

```bash
sudo apt install make
```

### Coding Process

1. Create a directory for each assignment/question.
2. Within each directory, add three files:
   - `code.vhdl`: Main VHDL code file.
   - `testbench.vhdl`: Testbench VHDL code file.
   - `Makefile`: Makefile for easier compilation and execution.

### Generating Output

1. Open a terminal and navigate to the directory containing the assignment/question.
2. Run the `make` command to compile and execute the code.
   ```bash
   make
   ```
3. To visualize the results using `gtkwave`:
   ```bash
   gtkwave result.vcd
   ```
4. If any errors occur, clean the project:
   ```bash
   make clean
   ```

### Example Usage

1. Navigate to the directory of the assignment/question:
   ```bash
   cd path/to/assignment_directory
   ```
2. Run the `make` command:
   ```bash
   make
   ```
3. View the results in `gtkwave`:
   ```bash
   gtkwave result.vcd
   ```
4. Clean the project if necessary:
   ```bash
   make clean
   ```

### Contributing

Contributions to this project are welcome! To contribute, please fork this repository, make your changes, and submit a pull request.


### Contact

For any questions or concerns, please contact Pragati Basnet at pragatibasnet123@gmail.com or Abhishek Laudari Bhat at ......@gmail.com

