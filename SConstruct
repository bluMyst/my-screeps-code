# vim: filetype=python
# run with the scons command
# http://scons.org/doc/production/HTML/scons-user.html#chap-builders-writing

coffee_builder = Builder(
    action = 'coffee -cbo javascript $SOURCE',
    suffix     = '.js',
    src_suffic = '.coffee')

env = Environment(BUILDERS = {'Coffee':coffee_builder})
