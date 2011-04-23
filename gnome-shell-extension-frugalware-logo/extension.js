
// Gnome Shell extension to display a Frugalware logo on Activities button

// Copyright (C) 2011 by Frugalware Linux <admin@frugalware.org>

/* Licensed under the MIT license (copied from the http://en.wikipedia.org/wiki/MIT_License site)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE. */

const St = imports.gi.St;
const Mainloop = imports.mainloop;
const Main = imports.ui.main;

// This is for debugging purposes
function _debugStuff() {
    // If you are debugging, change 'text' to whatever you want to check
    let text = new St.Label({ text: 'text', style: 'font-size: 10px; background: #000000; color: #ffffff;' });
    let monitor = global.get_primary_monitor();
    global.stage.add_actor(text);
    text.set_position(Math.floor (monitor.width / 2 - text.width / 2), Math.floor(monitor.height / 2 - text.height / 2));
    Mainloop.timeout_add(3000, function () { text.destroy(); });
}

// Extension initialization code - adding the Frugalware logo :)
function main() {
    // The following lines can be used for debugging purposes
    //Main.panel.button.connect('button-release-event', _debugStuff);
    //Main.panel.actor.set_direction(St.TextDirection.RTL);
    
    // Getting the old style and using it as a base if it's not null
    let label = Main.panel.button.get_child();
    let logo = new St.Icon({ icon_type: St.IconType.FULLCOLOR, icon_size: label.height, icon_name: 'frugalware-logo' });
    let box = new St.BoxLayout();
    Main.panel.button.set_child(box);
    
    box.add_actor(logo);
    box.add_actor(label);
    
    // Let's care about both RTL and LTR directions
    let currentDirection = Main.panel.actor.get_direction();
    if (currentDirection == St.TextDirection.LTR) {
        logo.set_style('padding-right: 10px;');
    }
    else if (currentDirection == St.TextDirection.RTL) {
        logo.set_style('padding-left: 10px;');
    }
}

