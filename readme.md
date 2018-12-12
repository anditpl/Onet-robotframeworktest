# Readme

You need to add webdriver into path folder.
You must have installed Python, Robotframework and SeleniumLibrary

How to install Robot Framework you can find [here](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst#using-pip)

Install the latest version (does not upgrade)
```sh
pip install robotframework
```

Upgrade to the latest version

```sh
pip install --upgrade robotframework
```

Uninstall

```sh
pip uninstall robotframework
```
You can find webdriver in [Selenium Website](https://www.seleniumhq.org/)

Install SeleniumLibrary:

```sh
pip install robotframework-selenium2library
```

### How to run

In cmd use:

```sh
$ robot Onet.robot

```
Run on the different browser:

Use variable BROWSER for example Chrome, Firefox, Edge, ie

Make sure that driver is in the path.

```sh
$ robot -v BROWSER:Chrome Onet.robot
```
