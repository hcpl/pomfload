========
pomfload
========


Usage
-----

.. code-block::

    Usage: pomfload [-s SITE] FILE...

    Options:
      -s SITE           Specify the site name to upload (default: comfy.moe)

    Supported sites:
      * aww.moe (alias: aww)
      * catbox.moe (alias: catbox)
      * comfy.moe (alias: comfy) (default)
      * desu.sh (alias: desu)
      * pomf.cat


Requirements
------------

* POSIX-compatible shell
* |coreutils|_ / no requirement here, if your OS provides essential
  tools by default
* |curl|_
* |jq|_

.. |coreutils| replace:: ``coreutils``
.. _coreutils: https://gnu.org/s/coreutils
.. |curl| replace:: ``curl``
.. _curl: https://curl.haxx.se/
.. |jq| replace:: ``jq``
.. _jq: https://stedolan.github.io/jq/


Customization
-------------

If you want to have your set of available sites, you can add or remove
sites in ``sites.json``, then execute:

.. code-block::

    $ ./generate-script > pomfload

That's all! `(at least, it should be that easy)`


How to Contribute
-----------------

Notes for ``sites.json``:

* Give some reasonable aliases (often one alias is sufficient).
* And make sure it can actually download (of course).

Patches, suggestions and comments are welcome!


Credits
-------

* `Shizmob <https://github.com/Shizmob>`_'s `original pomfload <https://gist.github.com/Shizmob/7984374>`_
