# Custom processing block example (Matlab)

This is an example of a custom processing block, which you can load in the Edge Impulse studio. See the docs: [Building custom processing blocks](https://docs.edgeimpulse.com/docs/custom-blocks).

## Install 



First make sure you have a compatible Python version.
https://www.mathworks.com/content/dam/mathworks/mathworks-dot-com/support/sysreq/files/python-compatibility.pdf

Follow the instruction here.
https://www.mathworks.com/help/matlab/matlab_external/install-the-matlab-engine-for-python.html

### Adddition instructions for MacOS

**As of Aug 10, 2022, M1 MACs are not supported.**

1. From your Terminal, execute the following to create a Python virtual environment (venv):
```
% <python_interpreter> -m venv <venv_dir>
```
where `<python_interpreter>` could be, for example, `python3` or `python3.9`, and `<venv_dir>` is the name of a directory that does not yet exist which you have sufficient permissions to create. For instance, `<venv_dir>` could be `~/mydir` since you should have permissions to create a subdirectory called `mydir` in your home directory (~).

2. Activate the virtual environment. On bash or zsh, this would be:
```
% source <venv_dir>/bin/activate
```
After this, you should see the “venv” directory in parentheses before the terminal command prompt, as in:
```
(mydir) ... %
```
From this point on, you can simply use `python` as the interpreter name, and it will point to the interpreter you used to create the “venv”.

3. Go to the directory from which you will install the MATLAB Engine API for Python:
```
% cd <matlabroot>/extern/engines/python
```

4. Execute this command at the terminal prompt:
```
% python setup.py install
```
Alternatively, for R2022a and later, you can execute this:
```
% pip install .
```

5. You can switch to another directory to make sure you are not pulling in modules from the install directory.

6. Now you should be able to open a Python interactive shell and call “import matlab.engine”:
```
% python
>>> import matlab.engine
```
Or you could execute a script:
```
% python myscript.py
```

7. To deactivate the “venv”, in your Terminal, type:
```
% deactivate
```

Alternatively, you can just exit from the terminal window, and the “venv” will be deactivated automatically.
