# coding: utf-8

import sys

__author__ = 'Joaquim Leitão'
__copyright__ = 'Copyright (c) 2018 Joaquim Leitão'
__email__ = 'jocaleitao93@gmail.com'


def main(arguments):
    application_name = arguments[0]
    application_name = application_name.lower()

    if application_name == 'todoist':
        _todoist_desktop_entry()


def _todoist_desktop_entry():
    contents = '[Desktop Entry]\nVersion=0.4\nType=Application\nName=Todoist\n' + \
               'Icon=/opt/todoist-64bits/todoist.png\nExec=/opt/todoist-64bits/Todoist\n' + \
               'Comment=Accomplish more, every day\nCategories=Development;\nTerminal=false'
    with open('todoist.desktop', 'w') as f:
        f.write(contents)

if __name__ == '__main__':
    main(sys.argv[1:])
