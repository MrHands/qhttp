TEMPLATE = subdirs

SUBDIRS += src
SUBDIRS += example

example.depends = src

CONFIG += dll debug_and_release
CONFIG(debug, debug|release)
{
	win32: TARGET = $$join(TARGET,,,d)
}