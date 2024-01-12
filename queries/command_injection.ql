import python

from Call c
where c.getFunc().(Name).getId() = "system"
select c, "This call to os.system() might allow command injection."
