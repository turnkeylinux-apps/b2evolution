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

     **Security note**: Updates to b2evolution may require supervision so
     they **ARE NOT** configured to install automatically. See below for
     upgrade instructions.

- SSL support out of the box.
- `Adminer`_ administration frontend for MySQL (listening on port
  12322 - uses SSL).
- Postfix MTA (bound to localhost) to allow sending of email (e.g.,
  password recovery).
- Webmin modules for configuring Apache2, PHP, MySQL and Postfix.

Upgrade b2evolution
-------------------

b2evolution has a built in updater, which works well, but because TurnKey lock
it down, the permissions need to be relaxed before it will work.

To relax permissions::

    chown -R www-data:www-data /var/www/b2evolution

Then run the updater within your web browser. Once it has completed
successfully, then to lock it back down again::

    chown -R root:root /var/www/b2evolution
    chown -R www-data:www-data /var/www/b2evolution/media
    chown -R www-data:www-data /var/www/b2evolution/_cache

For further info, please see `b2evolution documentation`_ for upgrading.

Credentials *(passwords set at first boot)*
-------------------------------------------

- Webmin, SSH, MySQL: username **root**
- Adminer: username **adminer**
- b2evolution: username **admin**


.. _b2evolution: https://b2evolution.net/
.. _TurnKey Core: https://www.turnkeylinux.org/core
.. _b2evolution documentation: https://b2evolution.net/man/upgrade-instructions
.. _Adminer: https://www.adminer.org/
