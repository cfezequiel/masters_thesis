#! /usr/bin/python

import sys
from PyQt4 import QtCore, QtGui
from connectdialog import Ui_connectDialog
from robotclient import AriaRobotClient, initialize

class ConnectDialogWrapper(QtGui.QDialog):
    def __init__(self, parent=None):
        QtGui.QDialog.__init__(self)
        self.ui = Ui_connectDialog()
        self.ui.setupUi(self)
        self.parent = parent

        # Connect objects with actions
        self.ui.connectButton.clicked.connect(self.connect)

    def connect(self):
        # Get input parameters
        host = str(self.ui.hostLineEdit.text())
        port = int(self.ui.portLineEdit.text())
        username = str(self.ui.usernameLineEdit.text())
        password = str(self.ui.passwordLineEdit.text())

        # Connect client to server
        initialize()
        client = AriaRobotClient()
        client.connect(host, port, username, password)
        name = client.getRobotName()
        print 'Connected to', name
        self.parent.robots[name] = client

        # Close dialog window
        self.close()

        


