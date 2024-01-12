import python

from Call c
where c.getFunc().(Attr).getName() = "command"
select c, "This call to os.command() might allow command injection."
