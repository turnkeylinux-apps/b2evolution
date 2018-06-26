b2evolution - Content management system
=======================================

`b2evolution`_ is a multi-lingual, multi-user, multi-blog publishing
system written in PHP and backed by a MySQL database. It allows you to
run your own blogs, newsfeeds or even photo streams.  It does basically
the same thing blogger or typepad does, but runs on your own server.

This appliance includes all the standard features in `TurnKey Core`_,
and on top of that:

- b2evolution configurations:
   
   - Installed from upstream source code to /var/www/b2evolution

- SSL support out of the box.
- `Adminer`_ administration frontend for MySQL (listening on port
  12322 - uses SSL).
- Postfix MTA (bound to localhost) to allow sending of email (e.g.,
  password recovery).
- Webmin modules for configuring Apache2, PHP, MySQL and Postfix.

Credentials *(passwords set at first boot)*
-------------------------------------------

- Webmin, SSH, MySQL: username **root**
- Adminer: username **adminer**
- b2evolution: username **admin**


.. _b2evolution: http://b2evolution.net/
.. _TurnKey Core: https://www.turnkeylinux.org/core
.. _Adminer: http://www.adminer.org/
