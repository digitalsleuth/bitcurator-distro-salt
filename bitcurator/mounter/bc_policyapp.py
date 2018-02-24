#!/usr/bin/env python3
#
# BitCurator Mounter and Read/Write Application Indicator
# Unity Application Indicator
# Verstion: 0.1
#
# Author: Kam Woods
# https://wiki.ubuntu.com/DesktopExperienceTeam/ApplicationIndicators
# License: GPL v3
#
# Requires Python >3.0
# Additional information at http://wiki.bitcurator.net/

import gi
gi.require_version('AppIndicator3', '0.1')
from gi.repository import AppIndicator3 as appindicator
from gi.repository import Gtk as gtk
import subprocess
import os, sys
import bc_mounter

class PolicyDialog(gtk.Dialog):

    def __init__(self, dialog_message):
        gtk.Dialog.__init__(self, "System Mount Policy", None, 0,
            (gtk.STOCK_CANCEL, gtk.ResponseType.CANCEL,
             gtk.STOCK_OK, gtk.ResponseType.OK))

        self.set_border_width(6)
        self.set_default_size(500, 150)

        # Set label with the warning (RO or RW)
        label = gtk.Label(dialog_message)

        box = self.get_content_area()
        box.add(label)
        self.show_all()

class MounterAppIndicator:

    def __init__(self):
        self.ind = appindicator.Indicator.new("Mounter Indicator", 
        "indicator-messages", appindicator.IndicatorCategory.APPLICATION_STATUS)

        self.ind.set_status(appindicator.IndicatorStatus.ACTIVE)
        self.ind.set_attention_icon("indicator-messages-new")

        # Set based on current policy (check if fstab entry exists)
        if os.path.isfile("/etc/udev/rules.d/fstab.rules"):
            self.ind.set_icon("/usr/share/pixmaps/mounter/harddisk-readonly.png")
        else:
            self.ind.set_icon("/usr/share/pixmaps/mounter/harddisk-writeable.png")

        # create a menu
        self.menu = gtk.Menu()

        # Mounter item
        #mounter = gtk.MenuItem("Open Mounter...")
        #mounter.connect("activate", self.mounter_start)
        #mounter.show()
        #self.menu.append(mounter)

        # Read-only status
        rostatus = gtk.MenuItem("Set mount policy READ-ONLY")
        rostatus.connect("activate", self.ro_set)
        rostatus.show()
        self.menu.append(rostatus)
        
	# Read-write status
        #if os.path.isfile("/etc/udev/rules.d/fstab.rules"):
        rwstatus = gtk.MenuItem("Set mount policy WRITEABLE")
        rwstatus.connect("activate", self.rw_set)
        rwstatus.show()
        self.menu.append(rwstatus)

	# Quit item
        #image = gtk.ImageMenuItem(gtk.STOCK_QUIT)
        #image = gtk.MenuItem("Exit")
        #image.connect("activate", self.exit_menu)
        #image.show()
        #self.menu.append(image)
                    
        self.menu.show()
        self.ind.set_menu(self.menu)

    def ro_set(self, widget, data=None):
        #Call RO warning indicator here    
        if not os.path.isfile("/etc/udev/rules.d/fstab.rules"):
            win = PolicyDialog("You are about to set the system-wide mount policy to:" \
                           + "\n\n" + "READ-ONLY" + "\n\n" + \
                           "Currently mounted volumes will not be affected until remounted.")
        else:
            win = PolicyDialog("\nThe mount policy is already in the READ-ONLY state." + "\n") 
        response = win.run()
        win.destroy()

        if response == gtk.ResponseType.OK:
            print("Got an OK")
            # Call rbfstab to set policy - READ-ONLY here
            if not os.path.isfile("/etc/udev/rules.d/fstab.rules"):
                subprocess.call(["sudo", "rbfstab", "-i"])
            else:
                print("No change required in current state")
            self.ind.set_icon("/usr/share/pixmaps/mounter/harddisk-readonly.png")
        else:
            print("Got a CANCEL")

    def rw_set(self, widget, data=None):
        #Call RW warning indicator here
        if os.path.isfile("/etc/udev/rules.d/fstab.rules"):
            win = PolicyDialog("CAUTION! You are about to set the system-wide mount policy to:" \
                           + "\n\n" + "WRITEABLE" + "\n\n" + \
                           "Click CANCEL to remain in the READ-ONLY state. Currently " \
                           + "\n" + "mounted volumes will not be affected until remounted.")
        else:
            win = PolicyDialog("\nThe mount policy is already in the WRITEABLE state." + "\n")

        #win.connect("delete-event", gtk.main_quit)
        response = win.run()
        win.destroy()

        if response == gtk.ResponseType.OK:
            print("Got an OK")
            # Call rbfstab to set policy - READ-WRITE here
            if os.path.isfile("/etc/udev/rules.d/fstab.rules"):
                subprocess.call(["sudo", "rbfstab", "-r"])
            else:
                print("No change required in current state")
            self.ind.set_icon("/usr/share/pixmaps/mounter/harddisk-writeable.png")
        else:
            print("Got a CANCEL")

    def exit_menu(self, widget, data=None):
        #gtk.main_quit()
        sys.exit(0)

def main():
    gtk.main()
    return 0

if __name__ == "__main__":
    indicator = MounterAppIndicator()
    main()

